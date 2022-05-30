import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/utils/encryption.dart';
import 'package:web3dart/web3dart.dart';

const String _kRpcServer = 'https://rinkeby.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161';
const String _kContractPath = 'web3/build/BundleStorage_abi.json';

class BlockchainStorageApi {
  BlockchainStorageApi({
    required this.contract,
    required this.client,
  });

  static Future<BlockchainStorageApi> get build async {
    return BlockchainStorageApi(
      contract: DeployedContract(
        ContractAbi.fromJson(
          await rootBundle.loadString(_kContractPath),
          'BundleStorage',
        ),
        EthereumAddress.fromHex(dotenv.env['SMART_CONTRACT_ADDRESS']!),
      ),
      client: Web3Client(
        _kRpcServer,
        Client(),
      ),
    );
  }

  final DeployedContract contract;
  final Web3Client client;

  Future<WalletInfo> getWalletInfo({required String walletPrivateKey}) async {
    final EthPrivateKey privateKey = EthPrivateKey.fromHex(walletPrivateKey);
    final EtherAmount balance = await client.getBalance(privateKey.address);
    return WalletInfo(balance: (balance.getInWei.toDouble() * 0.000000000000000001).toStringAsFixed(8));
  }

  Future<void> addBundle({required Bundle bundle, required String walletPrivateKey, required String masterKey}) async {
    final EthPrivateKey privateKey = EthPrivateKey.fromHex(walletPrivateKey);
    await client.sendTransaction(
      privateKey,
      Transaction.callContract(
        contract: contract,
        function: contract.function('addBundle'),
        parameters: <String>[
          encrypt(message: jsonEncode(bundle), key: masterKey),
          encrypt(
            message: DateTime.now().microsecondsSinceEpoch.toString(),
            key: masterKey,
          ),
        ],
      ),
      chainId: 4,
    );
  }

  Future<void> removeBundle(int id) async {
    throw Error();
  }

  Future<BlockchainVault> getVault() async {
    throw Error();
  }

  Future<Bundle> getLatestBundle({required String walletPrivateKey, required String masterKey}) async {
    final EthPrivateKey privateKey = EthPrivateKey.fromHex(walletPrivateKey);
    final List<dynamic> response = await client.call(
      contract: contract,
      function: contract.function('getLatestBundle'),
      params: <void>[],
      sender: await privateKey.extractAddress(),
    );
    if (kDebugMode) {
      print('response: $response');
    }
    final String encryptedBundle = (response[0] as List<dynamic>)[0] as String;
    final Bundle bundle =
        Bundle.fromJson(jsonDecode(decrypt(message: encryptedBundle, key: masterKey)) as Map<dynamic, dynamic>);
    return bundle;
  }
}

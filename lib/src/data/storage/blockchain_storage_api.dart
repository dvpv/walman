import 'dart:convert';
import 'dart:math';

import 'package:convert/convert.dart';
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

  Future<String> createWallet() async {
    // The wired code here is a workaround of a bug in the web3dart library
    // where the generated key has inconsistent size
    int ctr = 0;
    String walletPrivateKey = '';
    while (walletPrivateKey.length != 64) {
      walletPrivateKey = hex.encode(EthPrivateKey.createRandom(Random.secure()).privateKey);
      if (walletPrivateKey.length == 66) {
        walletPrivateKey = walletPrivateKey.substring(0, 64);
      }
      if (++ctr >= 20) {
        throw Exception('Wallet creation failed');
      }
    }
    return walletPrivateKey;
  }

  Future<WalletInfo> getWalletInfo({required String walletPrivateKey}) async {
    final EthPrivateKey privateKey = EthPrivateKey.fromHex(walletPrivateKey);
    final EtherAmount balance = await client.getBalance(privateKey.address);
    return WalletInfo(
      balance: (balance.getInWei.toDouble() * 0.000000000000000001).toStringAsFixed(8),
      address: privateKey.address.hex,
    );
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
          DateTime.now().millisecondsSinceEpoch.toString(),
        ],
      ),
      chainId: 4, // Chain ID of the test network, (1 for main network)
    );
  }

  Future<void> removeBundle({
    required VaultBundle bundle,
    required String walletPrivateKey,
    required String masterKey,
  }) async {
    final List<VaultBundle> vault = await getVault(walletPrivateKey: walletPrivateKey, masterKey: masterKey);
    final int index = vault.indexOf(bundle);
    if (index != -1) {
      final EthPrivateKey privateKey = EthPrivateKey.fromHex(walletPrivateKey);
      await client.sendTransaction(
        privateKey,
        Transaction.callContract(
          contract: contract,
          function: contract.function('removeBundle'),
          parameters: <BigInt>[BigInt.from(index)],
        ),
        chainId: 4,
      );
    }
  }

  Future<List<VaultBundle>> getVault({required String walletPrivateKey, required String masterKey}) async {
    final EthPrivateKey privateKey = EthPrivateKey.fromHex(walletPrivateKey);
    final List<dynamic> response = await client.call(
      contract: contract,
      function: contract.function('getVault'),
      params: <void>[],
      sender: await privateKey.extractAddress(),
    );
    final List<dynamic> encryptedVault = (response[0] as List<dynamic>)[0] as List<dynamic>;
    final List<VaultBundle> vault = encryptedVault.map((dynamic x) => x as List<dynamic>).map(
      (List<dynamic> l) {
        return VaultBundle(
          bundle: Bundle.fromJson(
            jsonDecode(
              decrypt(
                message: l[0] as String,
                key: masterKey,
              ),
            ) as Map<dynamic, dynamic>,
          ),
          storedAt: DateTime.fromMillisecondsSinceEpoch(int.parse(l[1] as String)),
          type: BundleType.blockchain,
        );
      },
    ).toList();
    return vault;
  }

  Future<Bundle> getLatestBundle({required String walletPrivateKey, required String masterKey}) async {
    final EthPrivateKey privateKey = EthPrivateKey.fromHex(walletPrivateKey);
    final List<dynamic> response = await client.call(
      contract: contract,
      function: contract.function('getLatestBundle'),
      params: <void>[],
      sender: await privateKey.extractAddress(),
    );
    final String encryptedBundle = (response[0] as List<dynamic>)[0] as String;
    final Bundle bundle =
        Bundle.fromJson(jsonDecode(decrypt(message: encryptedBundle, key: masterKey)) as Map<dynamic, dynamic>);
    return bundle;
  }
}

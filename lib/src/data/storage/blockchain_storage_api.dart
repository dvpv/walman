import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/utils/encryption.dart';
import 'package:web3dart/web3dart.dart';

// TODO(dvpv): add this to secrets
// TODO(dvpv): use flutter .env
const String _kSmartContractAddress = '0x71Bc8F00275456e1Db848c8d2662CB376A9BD35D';
const String _kRpcServer = 'https://rinkeby.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161';
const String _kContractPath = 'web3/build/BundleStorage_abi.json';
const String _secretPath = 'lib/secrets.json';

class BlockchainStorageApi {
  BlockchainStorageApi({required this.contract, required this.client, required this.secret});

  static Future<BlockchainStorageApi> get build async {
    return BlockchainStorageApi(
      contract: DeployedContract(
        ContractAbi.fromJson(
          await rootBundle.loadString(_kContractPath),
          'BundleStorage',
        ),
        EthereumAddress.fromHex(_kSmartContractAddress),
      ),
      client: Web3Client(
        _kRpcServer,
        Client(),
      ),
      secret: await rootBundle.loadStructuredData<Secret>(_secretPath, (String json) async {
        return Secret.fromJson(jsonDecode(json) as Map<dynamic, dynamic>);
      }),
    );
  }

  final DeployedContract contract;
  final Web3Client client;
  final Secret secret;

  Future<void> addBundle(Bundle bundle, String key) async {
    final EthPrivateKey privateKey = EthPrivateKey.fromHex(secret.walletPrivateKey);
    await client.sendTransaction(
      privateKey,
      Transaction.callContract(
        contract: contract,
        function: contract.function('addBundle'),
        parameters: <String>[
          encrypt(message: bundle.toString(), key: key),
          encrypt(message: DateTime.now().microsecondsSinceEpoch.toString(), key: key),
        ], // TODO(dvpv): replace with actual data
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

  Future<Bundle> getLatestBundle() async {
    throw Error();
  }
}

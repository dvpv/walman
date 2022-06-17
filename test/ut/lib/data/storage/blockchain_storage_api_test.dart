import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:walman/src/data/storage/blockchain_storage_api.dart';
import 'package:walman/src/models/index.dart';
import 'package:web3dart/web3dart.dart';

class MockDeployedContract with Mock implements DeployedContract {}

class MockWeb3Client with Mock implements Web3Client {}

Future<void> main() async {
  late DeployedContract contract;
  late Web3Client client;
  late EtherAmount etherAmount;
  late BlockchainStorageApi api;

  const String walletPrivateKey = '58740a65bcbcce96188a934cbe9b7361bfeec68fb48949e915deef97f7abdc43';
  final EthPrivateKey ethPrivateKey = EthPrivateKey.fromHex(walletPrivateKey);
  final WalletInfo walletInfo = WalletInfo(balance: '999.00000000', address: ethPrivateKey.address.hex);

  setUp(() {
    etherAmount = EtherAmount.inWei(BigInt.from(double.parse(walletInfo.balance).toInt()) * BigInt.from(pow(10, 18)));
    contract = MockDeployedContract();
    client = MockWeb3Client();
    api = BlockchainStorageApi(contract: contract, client: client);
  });

  test('createWallet', () async {
    final String result = await api.createWallet();
    expect(result.length, 64);
  });

  test('getWalletInfo', () async {
    when(() => client.getBalance(ethPrivateKey.address)).thenAnswer((_) async => etherAmount);
    final WalletInfo result = await api.getWalletInfo(walletPrivateKey: walletPrivateKey);
    expect(result, walletInfo);
    verify(() => client.getBalance(ethPrivateKey.address)).called(1);
  });
}

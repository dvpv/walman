import 'package:flutter_test/flutter_test.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/reducers/storage_reducer.dart';

Future<void> main() async {
  const String masterKey = 'Strong Master Key';
  const Bundle bundle = Bundle();

  test('_getBundle', () {
    const AppState initial = AppState();
    final AppState result = storageReducer(initial, const GetBundleSuccessful(bundle: bundle));
    expect(result.persistentState.bundle, bundle);
  });

  test('_getWalletPrivateKey', () {
    const AppState initial = AppState();
    final AppState result = storageReducer(
      initial,
      const GetWalletPrivateKeySuccessful(
        walletPrivateKey: masterKey,
        pendingId: masterKey,
      ),
    );
    expect(result.persistentState.walletPrivateKey, masterKey);
  });

  test('_getMasterKeyHash', () {
    const AppState initial = AppState();
    final AppState result = storageReducer(
      initial,
      const GetMasterKeyHashSuccessful(masterKeyHash: masterKey, pendingId: masterKey),
    );
    expect(result.persistentState.masterKeyHash, masterKey);
  });

  test('_blockchainRestoreLatestBundle', () {
    const AppState initial = AppState();
    final AppState result = storageReducer(
      initial,
      const BlockchainRestoreLatestBundleSuccessful(bundle: bundle, pendingId: masterKey),
    );
    expect(result.persistentState.bundle, bundle);
  });

  test('_blockchainGetVault', () {
    const AppState initial = AppState();
    final AppState result = storageReducer(
      initial,
      const BlockchainGetVaultSuccessful(vault: <VaultBundle>[], pendingId: masterKey),
    );
    expect(result.vault, <VaultBundle>[]);
  });

  test('_cloudGetVault', () {
    const AppState initial = AppState();
    final AppState result = storageReducer(
      initial,
      const CloudGetVaultSuccessful(vault: <VaultBundle>[], pendingId: masterKey),
    );
    expect(result.vault, <VaultBundle>[]);
    expect(true, false);
  });
}

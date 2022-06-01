import 'package:redux/redux.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> storageReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetBundleSuccessful>(_getBundle),
  TypedReducer<AppState, GetWalletPrivateKeySuccessful>(_getWalletPrivateKey),
  TypedReducer<AppState, GetMasterKeyHashSuccessful>(_getMasterKeyHash),
  TypedReducer<AppState, BlockchainRestoreLatestBundleSuccessful>(_blockchainRestoreLatestBundle),
  TypedReducer<AppState, BlockchainGetVaultSuccessful>(_blockchainGetVault),
]);

AppState _getBundle(AppState state, GetBundleSuccessful action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      bundle: action.bundle,
    ),
  );
}

AppState _getWalletPrivateKey(AppState state, GetWalletPrivateKeySuccessful action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      walletPrivateKey: action.walletPrivateKey,
    ),
  );
}

AppState _getMasterKeyHash(AppState state, GetMasterKeyHashSuccessful action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      materKeyHash: action.masterKeyHash,
    ),
  );
}

AppState _blockchainRestoreLatestBundle(AppState state, BlockchainRestoreLatestBundleSuccessful action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      bundle: action.bundle,
    ),
  );
}

AppState _blockchainGetVault(AppState state, BlockchainGetVaultSuccessful action) {
  return state.copyWith(
    vault: <VaultBundle>{...state.vault, ...action.vault}.toList(),
  );
}

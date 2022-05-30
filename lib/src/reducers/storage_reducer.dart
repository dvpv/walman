import 'package:redux/redux.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> storageReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, SecureStorageGetBundleSuccessful>(_secureStorageGetBundle),
  TypedReducer<AppState, SecureStorageGetWalletPrivateKeySuccessful>(_secureStorageGetWalletPrivateKey),
  TypedReducer<AppState, BlockchainRestoreLatestBundleSuccessful>(_blockchainRestoreLatestBundle),
]);

AppState _secureStorageGetBundle(AppState state, SecureStorageGetBundleSuccessful action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      bundle: action.bundle,
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

AppState _secureStorageGetWalletPrivateKey(AppState state, SecureStorageGetWalletPrivateKeySuccessful action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      walletPrivateKey: action.walletPrivateKey,
    ),
  );
}

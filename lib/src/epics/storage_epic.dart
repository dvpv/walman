import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/data/storage/blockchain_storage_api.dart';
import 'package:walman/src/data/storage/secure_storage_api.dart';
import 'package:walman/src/models/index.dart';

class StorageEpic {
  StorageEpic({required this.secureStorageApi, required this.blockchainStorageApi});

  final SecureStorageApi secureStorageApi;
  final BlockchainStorageApi blockchainStorageApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, SecureStorageGetBundleStart>(_secureStorageGetBundle),
      TypedEpic<AppState, SecureStorageStoreBundleStart>(_secureStorageStoreBundle),
      TypedEpic<AppState, BlockchainAddBundleStart>(_blockchainAddBundle),
      TypedEpic<AppState, BlockchainRestoreLatestBundleStart>(_blockchainRestoreLatestBundle),
    ]);
  }

  Stream<AppAction> _secureStorageGetBundle(Stream<SecureStorageGetBundleStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SecureStorageGetBundleStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => secureStorageApi.getBundle(action.masterKey ?? store.state.user!.masterKey!))
          .map<SecureStorageGetBundle>(
            (Bundle bundle) => SecureStorageGetBundleSuccessful(bundle: bundle, pendingId: action.pendingId),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => SecureStorageGetBundleError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _secureStorageStoreBundle(
    Stream<SecureStorageStoreBundleStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((SecureStorageStoreBundleStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => secureStorageApi.storeBundle(
              action.bundle ?? store.state.persistentState.bundle,
              store.state.user!.masterKey!,
            ),
          )
          .mapTo<SecureStorageStoreBundle>(SecureStorageStoreBundleSuccessful(action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => SecureStorageStoreBundleError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _blockchainAddBundle(Stream<BlockchainAddBundleStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((BlockchainAddBundleStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => blockchainStorageApi.addBundle(action.bundle, store.state.user!.masterKey!))
          .map<AppAction>((_) => BlockchainAddBundleSuccessful(action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => BlockchainAddBundleError(error, stackTrace, action.pendingId),
          )
          .doOnData(action.onResult ?? (_) {});
    });
  }

  Stream<AppAction> _blockchainRestoreLatestBundle(
    Stream<BlockchainRestoreLatestBundleStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((BlockchainRestoreLatestBundleStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => blockchainStorageApi.getLatestBundle(store.state.user!.masterKey!))
          .expand<AppAction>(
            (Bundle bundle) => <AppAction>[
              BlockchainRestoreLatestBundleSuccessful(bundle: bundle, pendingId: action.pendingId),
              SecureStorageStoreBundleStart(bundle: bundle),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) =>
                BlockchainRestoreLatestBundleError(error, stackTrace, action.pendingId),
          )
          .doOnData(action.onResult ?? (_) {});
    });
  }
}

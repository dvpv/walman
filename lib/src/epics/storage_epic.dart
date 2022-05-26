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
      TypedEpic<AppState, GetDataStart>(_getDataStart),
      TypedEpic<AppState, StoreDataStart>(_storeDataStart),
      TypedEpic<AppState, BlockchainAddBundleStart>(_blockchainAddBundle),
      TypedEpic<AppState, BlockchainRestoreLatestBundleStart>(_blockchainRestoreLatestBundle),
    ]);
  }

  Stream<GetData> _getDataStart(Stream<GetDataStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetDataStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => secureStorageApi.getData(action.masterKey))
          .map<GetData>((Bundle? data) => GetDataSuccessful(data, action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => GetDataError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<StoreData> _storeDataStart(Stream<StoreDataStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((StoreDataStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => secureStorageApi.storeData(store.state.bundle, action.masterKey))
          .mapTo<StoreData>(StoreDataSuccessful(action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => StoreDataError(error, stackTrace, action.pendingId),
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
          .asyncMap<AppAction>((Bundle bundle) => BlockchainRestoreLatestBundleSuccessful(bundle: bundle))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) =>
                BlockchainRestoreLatestBundleError(error, stackTrace, action.pendingId),
          )
          .doOnData(action.onResult ?? (_) {});
    });
  }
}

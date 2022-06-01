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
      TypedEpic<AppState, SecureStorageStoreWalletPrivateKeyStart>(_secureStorageStoreWalletPrivateKey),
      TypedEpic<AppState, SecureStorageGetWalletPrivateKeyStart>(_secureStorageGetWalletPrivateKey),
      TypedEpic<AppState, SecureStorageStoreMasterKeyHashStart>(_secureStorageStoreMasterKeyHash),
      TypedEpic<AppState, SecureStorageGetMasterKeyHashStart>(_secureStorageGetMasterKeyHash),
      TypedEpic<AppState, BlockchainAddBundleStart>(_blockchainAddBundle),
      TypedEpic<AppState, BlockchainRestoreLatestBundleStart>(_blockchainRestoreLatestBundle),
    ]);
  }

  Stream<AppAction> _secureStorageGetBundle(Stream<SecureStorageGetBundleStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SecureStorageGetBundleStart action) {
      return Stream<void>.value(null)
          // TODO(dvpv): always require masterKey
          .asyncMap((_) => secureStorageApi.getBundle(action.masterKey ?? store.state.masterKey!))
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
              // TODO(dvpv): always require masterKey
              store.state.masterKey!,
            ),
          )
          .mapTo<SecureStorageStoreBundle>(SecureStorageStoreBundleSuccessful(action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => SecureStorageStoreBundleError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _secureStorageStoreWalletPrivateKey(
    Stream<SecureStorageStoreWalletPrivateKeyStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((SecureStorageStoreWalletPrivateKeyStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => secureStorageApi.storeWalletPrivateKey(
              store.state.persistentState.walletPrivateKey,
              // TODO(dvpv): always require masterKey
              store.state.masterKey!,
            ),
          )
          .mapTo<SecureStorageStoreBundle>(SecureStorageStoreBundleSuccessful(action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => SecureStorageStoreBundleError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _secureStorageGetWalletPrivateKey(
    Stream<SecureStorageGetWalletPrivateKeyStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((SecureStorageGetWalletPrivateKeyStart action) {
      return Stream<void>.value(null)
          // TODO(dvpv): always require masterKey
          .asyncMap((_) => secureStorageApi.getWalletPrivateKey(action.masterKey ?? store.state.masterKey!))
          .map<SecureStorageGetWalletPrivateKey>(
            (String? walletPrivateKey) => SecureStorageGetWalletPrivateKeySuccessful(
              walletPrivateKey: walletPrivateKey,
              pendingId: action.pendingId,
            ),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) =>
                SecureStorageGetWalletPrivateKeyError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _secureStorageStoreMasterKeyHash(
    Stream<SecureStorageStoreMasterKeyHashStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((SecureStorageStoreMasterKeyHashStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => secureStorageApi.storeMasterKeyHash(action.masterKeyHash))
          .expand<AppAction>(
            (_) => <AppAction>[
              SecureStorageStoreMasterKeyHashSuccessful(pendingId: action.pendingId),
              SecureStorageGetMasterKeyHashStart(pendingId: action.pendingId),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) =>
                SecureStorageStoreMasterKeyHashError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _secureStorageGetMasterKeyHash(
    Stream<SecureStorageGetMasterKeyHashStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((SecureStorageGetMasterKeyHashStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => secureStorageApi.getMasterKeyHash())
          .map<AppAction>(
            (String? masterKeyHash) =>
                SecureStorageGetMasterKeyHashSuccessful(masterKeyHash: masterKeyHash, pendingId: action.pendingId),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) =>
                SecureStorageGetMasterKeyHashError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _blockchainAddBundle(Stream<BlockchainAddBundleStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((BlockchainAddBundleStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => blockchainStorageApi.addBundle(
              bundle: action.bundle,
              walletPrivateKey: action.walletPrivateKey,
              // TODO(dvpv): always require masterKey
              masterKey: store.state.masterKey!,
            ),
          )
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
          .asyncMap(
            (_) => blockchainStorageApi.getLatestBundle(
              walletPrivateKey: action.walletPrivateKey,
              // TODO(dvpv): always require masterKey
              masterKey: store.state.masterKey!,
            ),
          )
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

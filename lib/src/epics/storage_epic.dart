import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/data/storage/blockchain_storage_api.dart';
import 'package:walman/src/data/storage/firestore_api.dart';
import 'package:walman/src/data/storage/secure_storage_api.dart';
import 'package:walman/src/models/index.dart';

class StorageEpic {
  StorageEpic({required this.firestoreApi, required this.secureStorageApi, required this.blockchainStorageApi});

  final SecureStorageApi secureStorageApi;
  final BlockchainStorageApi blockchainStorageApi;
  final FirestoreApi firestoreApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetBundleStart>(_getBundle),
      TypedEpic<AppState, StoreBundleStart>(_storeBundle),
      TypedEpic<AppState, StoreWalletPrivateKeyStart>(_storeWalletPrivateKey),
      TypedEpic<AppState, GetWalletPrivateKeyStart>(_getWalletPrivateKey),
      TypedEpic<AppState, StoreMasterKeyHashStart>(_storeMasterKeyHash),
      TypedEpic<AppState, GetMasterKeyHashStart>(_getMasterKeyHash),
      TypedEpic<AppState, BlockchainAddBundleStart>(_blockchainAddBundle),
      TypedEpic<AppState, BlockchainRestoreLatestBundleStart>(_blockchainRestoreLatestBundle),
      TypedEpic<AppState, BlockchainGetVaultStart>(_blockchainGetVault),
      TypedEpic<AppState, CloudStoreVaultStart>(_cloudStoreVault),
      TypedEpic<AppState, CloudGetVaultStart>(_cloudGetVault),
      TypedEpic<AppState, CloudAddBundle>(_cloudAddBundle),
    ]);
  }

  Stream<AppAction> _getBundle(Stream<GetBundleStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetBundleStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => secureStorageApi.getBundle(action.masterKey))
          .map<GetBundle>(
            (Bundle bundle) => GetBundleSuccessful(bundle: bundle, pendingId: action.pendingId),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => GetBundleError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _storeBundle(
    Stream<StoreBundleStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((StoreBundleStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => secureStorageApi.storeBundle(
              action.bundle,
              store.state.masterKey!,
            ),
          )
          .mapTo<StoreBundle>(StoreBundleSuccessful(action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => StoreBundleError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _storeWalletPrivateKey(
    Stream<StoreWalletPrivateKeyStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((StoreWalletPrivateKeyStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => secureStorageApi.storeWalletPrivateKey(
              store.state.persistentState.walletPrivateKey,
              store.state.masterKey!,
            ),
          )
          .mapTo<StoreBundle>(StoreBundleSuccessful(action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => StoreBundleError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _getWalletPrivateKey(
    Stream<GetWalletPrivateKeyStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((GetWalletPrivateKeyStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => secureStorageApi.getWalletPrivateKey(action.masterKey))
          .map<GetWalletPrivateKey>(
            (String? walletPrivateKey) => GetWalletPrivateKeySuccessful(
              walletPrivateKey: walletPrivateKey,
              pendingId: action.pendingId,
            ),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => GetWalletPrivateKeyError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _storeMasterKeyHash(
    Stream<StoreMasterKeyHashStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((StoreMasterKeyHashStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => secureStorageApi.storeMasterKeyHash(action.masterKeyHash))
          .expand<AppAction>(
            (_) => <AppAction>[
              StoreMasterKeyHashSuccessful(pendingId: action.pendingId),
              GetMasterKeyHashStart(pendingId: action.pendingId),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => StoreMasterKeyHashError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _getMasterKeyHash(
    Stream<GetMasterKeyHashStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((GetMasterKeyHashStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => secureStorageApi.getMasterKeyHash())
          .map<AppAction>(
            (String? masterKeyHash) =>
                GetMasterKeyHashSuccessful(masterKeyHash: masterKeyHash, pendingId: action.pendingId),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => GetMasterKeyHashError(error, stackTrace, action.pendingId),
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
              masterKey: store.state.masterKey!,
            ),
          )
          .expand<AppAction>(
            (Bundle bundle) => <AppAction>[
              BlockchainRestoreLatestBundleSuccessful(bundle: bundle, pendingId: action.pendingId),
              StoreBundleStart(bundle: bundle),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) =>
                BlockchainRestoreLatestBundleError(error, stackTrace, action.pendingId),
          )
          .doOnData(action.onResult ?? (_) {});
    });
  }

  Stream<AppAction> _blockchainGetVault(Stream<BlockchainGetVaultStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((BlockchainGetVaultStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) =>
                blockchainStorageApi.getVault(walletPrivateKey: action.walletPrivateKey, masterKey: action.masterKey),
          )
          .map<AppAction>(
            (List<VaultBundle> vault) => BlockchainGetVaultSuccessful(vault: vault, pendingId: action.pendingId),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => BlockchainGetVaultError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _cloudStoreVault(Stream<CloudStoreVaultStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CloudStoreVaultStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => firestoreApi.storeVault(
              user: action.firebaseUser,
              vault: action.vault,
              masterKey: action.masterKey,
            ),
          )
          .expand<AppAction>(
            (_) => <AppAction>[
              CloudStoreVaultSuccessful(action.pendingId),
              CloudGetVaultStart(firebaseUser: action.firebaseUser, masterKey: action.masterKey),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => CloudStoreVaultError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _cloudGetVault(Stream<CloudGetVaultStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CloudGetVaultStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => firestoreApi.getVault(user: action.firebaseUser, masterKey: action.masterKey))
          .map<AppAction>(
            (List<VaultBundle> valut) => CloudGetVaultSuccessful(vault: valut, pendingId: action.pendingId),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => CloudGetVaultError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _cloudAddBundle(Stream<CloudAddBundle> actions, EpicStore<AppState> store) {
    return actions.map(
      (CloudAddBundle action) => CloudStoreVaultStart(
        masterKey: action.masterKey,
        vault: <VaultBundle>[
          ...action.vault.where((VaultBundle bundle) => bundle.type == BundleType.cloud).toList(),
          VaultBundle(bundle: action.bundle, storedAt: DateTime.now(), type: BundleType.cloud),
        ],
        firebaseUser: action.firebaseUser,
      ),
    );
  }
}

import 'package:redux_epics/redux_epics.dart';
import 'package:walman/src/data/auth/firebase_auth_api.dart';
import 'package:walman/src/data/storage/blockchain_storage_api.dart';
import 'package:walman/src/data/storage/firestore_api.dart';
import 'package:walman/src/data/storage/secure_storage_api.dart';
import 'package:walman/src/epics/auth_epic.dart';
import 'package:walman/src/epics/local_epic.dart';
import 'package:walman/src/epics/storage_epic.dart';
import 'package:walman/src/epics/ui_epic.dart';
import 'package:walman/src/models/index.dart';

class AppEpic {
  AppEpic({
    required this.firestoreApi,
    required this.authApi,
    required this.secureStorageApi,
    required this.blockchainStorageApi,
  });

  final FirebaseAuthApi authApi;
  final SecureStorageApi secureStorageApi;
  final BlockchainStorageApi blockchainStorageApi;
  final FirestoreApi firestoreApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      AuthEpic(authApi).epics,
      LocalEpic().epics,
      StorageEpic(
        secureStorageApi: secureStorageApi,
        blockchainStorageApi: blockchainStorageApi,
        firestoreApi: firestoreApi,
      ).epics,
      UiEpic(blockchainStorageApi).epics,
    ]);
  }
}

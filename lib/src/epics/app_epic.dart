import 'package:redux_epics/redux_epics.dart';
import 'package:walman/src/data/auth/auth_api.dart';
import 'package:walman/src/data/storage/secure_storage_api.dart';
import 'package:walman/src/epics/auth_epic.dart';
import 'package:walman/src/epics/local_epic.dart';
import 'package:walman/src/epics/storage_epic.dart';
import 'package:walman/src/epics/ui_epic.dart';
import 'package:walman/src/models/index.dart';

class AppEpic {
  AppEpic(this._authApi, this._secureStorage);

  final AuthApi _authApi;
  final SecureStorageApi _secureStorage;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      AuthEpic(_authApi).epics,
      LocalEpic().epics,
      StorageEpic(_secureStorage).epics,
      UiEpic().epics,
    ]);
  }
}

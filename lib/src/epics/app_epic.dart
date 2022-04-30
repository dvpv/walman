import 'package:redux_epics/redux_epics.dart';
import 'package:walman/src/data/auth/auth_api.dart';
import 'package:walman/src/epics/auth_epic.dart';
import 'package:walman/src/models/index.dart';

class AppEpic {
  AppEpic(this._authApi);

  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      AuthEpic(_authApi).epics,
    ]);
  }
}

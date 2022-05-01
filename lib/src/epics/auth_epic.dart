import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/data/auth/auth_api.dart';
import 'package:walman/src/models/index.dart';

class AuthEpic {
  AuthEpic(this._auth);

  final AuthApi _auth;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart),
      TypedEpic<AppState, SignUpStart>(_signup),
    ]);
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.login(email: action.email, password: action.password))
          .map<AppAction>((AppUser user) => LoginSuccessful(user, action.pendingId))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => LoginError(error, stackTrace, action.pendingId))
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _signup(Stream<SignUpStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SignUpStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.signup(email: action.email, password: action.password, username: action.username))
          .map<AppAction>((AppUser user) => SignUpSuccessful(user, action.pendingId))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignUpError(error, stackTrace, action.pendingId))
          .doOnData(action.onResult);
    });
  }
}

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/data/auth/auth_api.dart';
import 'package:walman/src/models/index.dart';

class AuthEpic {
  AuthEpic(this._auth);

  final AuthApi _auth;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_login),
      TypedEpic<AppState, SignUpStart>(_signup),
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUser),
      TypedEpic<AppState, LogoutStart>(_logout),
      TypedEpic<AppState, UnlockAppStart>(_unlockAppStart),
    ]);
  }

  Stream<AppAction> _login(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.login(email: action.email, password: action.password))
          .expand<AppAction>(
            (AppUser user) => <AppAction>[
              LoginSuccessful(user, action.pendingId),
              SecureStorageGetBundleStart(masterKey: user.masterKey),
            ],
          )
          .onErrorReturnWith((Object error, StackTrace stackTrace) => LoginError(error, stackTrace, action.pendingId))
          .doOnData(action.onResult);
    });
  }

  Stream<SignUp> _signup(Stream<SignUpStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SignUpStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.signup(email: action.email, password: action.password, username: action.username))
          .map<SignUp>((AppUser user) => SignUpSuccessful(user, action.pendingId))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => SignUpError(error, stackTrace, action.pendingId))
          .doOnData(action.onResult);
    });
  }

  Stream<GetCurrentUser> _getCurrentUser(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.getCurrentUser())
          .map<GetCurrentUser>(GetCurrentUserSuccessful.new)
          .onErrorReturnWith(GetCurrentUserError.new);
    });
  }

  Stream<Logout> _logout(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.logout())
          .mapTo<Logout>(LogoutSuccessful(action.pendingId))
          .onErrorReturnWith((Object error, StackTrace stackTrace) => LogoutError(error, stackTrace, action.pendingId));
    });
  }

  Stream<AppAction> _unlockAppStart(Stream<UnlockAppStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UnlockAppStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.login(email: store.state.user!.email, password: action.password))
          .expand<AppAction>(
            (AppUser user) => <AppAction>[
              UnlockAppSuccessful(user, action.pendingId),
              SecureStorageGetBundleStart(masterKey: user.masterKey),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => UnlockAppError(error, stackTrace, action.pendingId),
          );
    });
  }
}

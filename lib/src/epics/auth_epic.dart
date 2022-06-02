import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/data/auth/firebase_auth_api.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/utils/exceptions.dart';
import 'package:walman/src/utils/hash.dart';

class AuthEpic {
  AuthEpic(this._auth);

  final FirebaseAuthApi _auth;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, FirebaseLoginStart>(_firebaseLogin),
      TypedEpic<AppState, FirebaseSignUpStart>(_firebaseSignup),
      TypedEpic<AppState, GetCurrentFirebaseUserStart>(_getCurrentFirebaseUser),
      TypedEpic<AppState, FirebaseLogoutStart>(_firebaseLogout),
      TypedEpic<AppState, UnlockAppStart>(_unlockApp),
      TypedEpic<AppState, CreateMasterKeyStart>(_createMasterKey),
      TypedEpic<AppState, FirebaseChangePasswordStart>(_firebaseChangePassword),
    ]);
  }

  Stream<AppAction> _firebaseLogin(Stream<FirebaseLoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((FirebaseLoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.login(email: action.email, password: action.password))
          .map<FirebaseLogin>(
            (FirebaseUser firebaseUser) =>
                FirebaseLoginSuccessful(firebaseUser: firebaseUser, pendingId: action.pendingId),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => FirebaseLoginError(error, stackTrace, action.pendingId),
          )
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _firebaseSignup(Stream<FirebaseSignUpStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((FirebaseSignUpStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.signup(email: action.email, password: action.password, username: action.username))
          .map<FirebaseSignUp>(
            (FirebaseUser firebaseUser) =>
                FirebaseSignUpSuccessful(firebaseUser: firebaseUser, pendingId: action.pendingId),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => FirebaseSignUpError(error, stackTrace, action.pendingId),
          )
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _firebaseChangePassword(Stream<FirebaseChangePasswordStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((FirebaseChangePasswordStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _auth.changePassword(
              currentPassword: action.currentPassword,
              firebaseUser: action.firebaseUser,
              newPassword: action.newPassword,
            ),
          )
          .mapTo<AppAction>(FirebaseChangePasswordSuccessful(pendingId: action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => FirebaseChangePasswordError(error, stackTrace, action.pendingId),
          )
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getCurrentFirebaseUser(Stream<GetCurrentFirebaseUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentFirebaseUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.getCurrentUser())
          .map<GetCurrentFirebaseUser>(
            (FirebaseUser? firebaseUser) =>
                GetCurrentFirebaseUserSuccessful(firebaseUser: firebaseUser, pendingId: action.pendingId),
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => GetCurrentFirebaseUserError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _firebaseLogout(Stream<FirebaseLogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((FirebaseLogoutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auth.logout())
          .expand<AppAction>(
            (_) => <AppAction>[
              FirebaseLogoutSuccessful(action.pendingId),
              const RemoveFromVault(BundleType.cloud),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => FirebaseLogoutError(error, stackTrace, action.pendingId),
          )
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _unlockApp(Stream<UnlockAppStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((UnlockAppStart action) {
      return Stream<void>.value(null)
          .map<String>((_) {
            final String hash = hashPassword(password: action.masterKey, salt: saltFromHash(action.masterKeyHash));
            if (hash != action.masterKeyHash) {
              throw InvalidMasterKeyException();
            }
            return action.masterKey;
          })
          .expand<AppAction>(
            (String masterKey) => <AppAction>[
              UnlockAppSuccessful(masterKey: masterKey, pendingId: action.pendingId),
              const GetCurrentFirebaseUserStart(),
              GetBundleStart(masterKey: masterKey),
              GetWalletPrivateKeyStart(masterKey: masterKey),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => UnlockAppError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _createMasterKey(Stream<CreateMasterKeyStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateMasterKeyStart action) {
      return Stream<void>.value(null)
          .map<String>((_) => hashPassword(password: action.masterKey))
          .expand<AppAction>(
            (String masterKeyHash) => <AppAction>[
              CreateMasterKeySuccessful(masterKey: action.masterKey, pendingId: action.pendingId),
              StoreMasterKeyHashStart(masterKeyHash: masterKeyHash),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => CreateMasterKeyError(error, stackTrace, action.pendingId),
          );
    });
  }
}

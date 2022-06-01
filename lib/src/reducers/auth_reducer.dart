import 'package:redux/redux.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> authReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, FirebaseLoginSuccessful>(_firebaseLoginSuccessful),
  TypedReducer<AppState, FirebaseSignUpSuccessful>(_firebaseSignupSuccessful),
  TypedReducer<AppState, GetCurrentFirebaseUserSuccessful>(_getCurrentFirebaseUserSuccessful),
  TypedReducer<AppState, FirebaseLogoutSuccessful>(_firebaseLogoutSuccessful),
  TypedReducer<AppState, UnlockAppSuccessful>(_unlockAppSuccessful),
  TypedReducer<AppState, CreateMasterKeySuccessful>(_createMaterKey),
]);

AppState _firebaseLoginSuccessful(AppState state, FirebaseLoginSuccessful action) {
  return state.copyWith(firebaseUser: action.firebaseUser);
}

AppState _firebaseSignupSuccessful(AppState state, FirebaseSignUpSuccessful action) {
  return state.copyWith(firebaseUser: action.firebaseUser);
}

AppState _getCurrentFirebaseUserSuccessful(AppState state, GetCurrentFirebaseUserSuccessful action) {
  return state.copyWith(firebaseUser: action.firebaseUser);
}

AppState _firebaseLogoutSuccessful(AppState state, FirebaseLogoutSuccessful action) {
  return state.copyWith(firebaseUser: null);
}

AppState _unlockAppSuccessful(AppState state, UnlockAppSuccessful action) {
  return state.copyWith(masterKey: action.masterKey);
}

AppState _createMaterKey(AppState state, CreateMasterKeySuccessful action) {
  return state.copyWith(masterKey: action.masterKey);
}

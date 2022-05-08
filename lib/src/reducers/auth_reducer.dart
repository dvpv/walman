import 'package:redux/redux.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> authReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AppState, SignUpSuccessful>(_signupSuccessful),
  TypedReducer<AppState, GetCurrentUserSuccessful>(_getCurrentUserSuccessful),
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, UnlockAppSuccessful>(_unlockAppSuccessful),
]);

AppState _loginSuccessful(AppState state, LoginSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _signupSuccessful(AppState state, SignUpSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _getCurrentUserSuccessful(AppState state, GetCurrentUserSuccessful action) {
  return state.copyWith(user: action.user);
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return const AppState();
}

AppState _unlockAppSuccessful(AppState state, UnlockAppSuccessful action) {
  return state.copyWith(user: action.user);
}

import 'package:redux/redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> localReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, CreateNewPassword>(_createNewPassword),
]);

AppState _createNewPassword(AppState state, CreateNewPassword action) =>
    state.copyWith(bundle: state.bundle.copyWith(passwords: <Password>[...state.bundle.passwords, action.password]));

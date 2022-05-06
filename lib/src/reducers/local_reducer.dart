import 'package:redux/redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> localReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, CreateNewPassword>(_createNewPassword),
  TypedReducer<AppState, EditPasswordStart>(_editPasswordStart),
  TypedReducer<AppState, SetDetailsPasswordTargetStart>(_setDetailsPasswordTargetStart)
]);

AppState _createNewPassword(AppState state, CreateNewPassword action) =>
    state.copyWith(bundle: state.bundle.copyWith(passwords: <Password>[...state.bundle.passwords, action.password]));

AppState _editPasswordStart(AppState state, EditPasswordStart action) => state.copyWith(
      bundle: state.bundle.copyWith(
        passwords:
            state.bundle.passwords.toList().where((Password password) => password.id != action.password.id).toList()
              ..add(action.password),
      ),
    );

AppState _setDetailsPasswordTargetStart(AppState state, SetDetailsPasswordTargetStart action) =>
    state.copyWith(detailsState: state.detailsState.copyWith(password: action.password));

import 'package:redux/redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> localReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, CreateNewPassword>(_createNewPassword),
  TypedReducer<AppState, EditPasswordStart>(_editPasswordStart),
  TypedReducer<AppState, DeletePassword>(_deletePassword),
  TypedReducer<AppState, DeleteCode>(_deleteCode),
  TypedReducer<AppState, SetScannedCode>(_setScannedCode),
  TypedReducer<AppState, CreateNewCode>(_createNewCode),
  TypedReducer<AppState, SelectItemDetailsStart>(_selectItemDetails),
  TypedReducer<AppState, UpdateAccessTime>(_updateAccessTime),
]);

AppState _createNewPassword(AppState state, CreateNewPassword action) {
  return state.copyWith(
    bundle: state.bundle.copyWith(passwords: <Password>[...state.bundle.passwords, action.password]),
  );
}

AppState _editPasswordStart(AppState state, EditPasswordStart action) {
  return state.copyWith(
    bundle: state.bundle.copyWith(
      passwords:
          state.bundle.passwords.toList().where((Password password) => password.id != action.password.id).toList()
            ..add(action.password),
    ),
  );
}

AppState _deletePassword(AppState state, DeletePassword action) {
  return state.copyWith(
    bundle: state.bundle.copyWith(
      passwords: <Password>[...state.bundle.passwords].where((Password password) => action.id != password.id).toList(),
    ),
  );
}

AppState _deleteCode(AppState state, DeleteCode action) {
  return state.copyWith(
    bundle: state.bundle.copyWith(
      codes: <Code>[...state.bundle.codes].where((Code code) => action.id != code.id).toList(),
    ),
  );
}

AppState _setScannedCode(AppState state, SetScannedCode action) {
  return state.copyWith(createCodeState: state.createCodeState.copyWith(code: action.code));
}

AppState _createNewCode(AppState state, CreateNewCode action) {
  return state.copyWith(bundle: state.bundle.copyWith(codes: <Code>[...state.bundle.codes, action.code]));
}

AppState _selectItemDetails(AppState state, SelectItemDetailsStart action) {
  return state.copyWith(detailsState: state.detailsState.copyWith(selectedId: action.id));
}

AppState _updateAccessTime(AppState state, UpdateAccessTime action) {
  if (state.bundle.passwords.any((Password password) => password.id == action.id)) {
    final Password oldPassword = state.bundle.passwords.firstWhere((Password password) => password.id == action.id);
    final Password password = oldPassword.copyWith(
      timesAccessed: oldPassword.timesAccessed + 1,
      lastAccess: DateTime.now(),
    );
    return state.copyWith(
      bundle: state.bundle.copyWith(
        passwords: state.bundle.passwords.toList().where((Password password) => password.id != action.id).toList()
          ..add(
            password,
          ),
      ),
    );
  } else if (state.bundle.codes.any((Code code) => code.id == action.id)) {
    final Code oldCode = state.bundle.codes.firstWhere((Code code) => code.id == action.id);
    final Code code = oldCode.copyWith(
      timesAccessed: oldCode.timesAccessed + 1,
      lastAccess: DateTime.now(),
    );
    return state.copyWith(
      bundle: state.bundle.copyWith(
        codes: state.bundle.codes.toList().where((Code code) => code.id != action.id).toList()
          ..add(
            code,
          ),
      ),
    );
  }
  return state;
}

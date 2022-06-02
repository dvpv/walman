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
  TypedReducer<AppState, GeneratePasswordSuccessful>(_generatePasswordSuccessful),
  TypedReducer<AppState, ChangePasswordGeneratorCharacterPool>(_changePasswordGeneratorCharacterPool),
  TypedReducer<AppState, ChangePasswordGeneratorLength>(_changePasswordGeneratorCharacterLength),
  TypedReducer<AppState, SetWalletPrivateKey>(_setWalletPrivateKey),
  TypedReducer<AppState, SetBundle>(_setBundle),
  TypedReducer<AppState, RemoveFromVault>(_removeFromVault),
]);

AppState _createNewPassword(AppState state, CreateNewPassword action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      bundle: state.persistentState.bundle
          .copyWith(passwords: <Password>[...state.persistentState.bundle.passwords, action.password]),
    ),
  );
}

AppState _editPasswordStart(AppState state, EditPasswordStart action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      bundle: state.persistentState.bundle.copyWith(
        passwords: state.persistentState.bundle.passwords
            .toList()
            .where((Password password) => password.id != action.password.id)
            .toList()
          ..add(action.password),
      ),
    ),
  );
}

AppState _deletePassword(AppState state, DeletePassword action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      bundle: state.persistentState.bundle.copyWith(
        passwords: <Password>[...state.persistentState.bundle.passwords]
            .where((Password password) => action.id != password.id)
            .toList(),
      ),
    ),
  );
}

AppState _deleteCode(AppState state, DeleteCode action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      bundle: state.persistentState.bundle.copyWith(
        codes: <Code>[...state.persistentState.bundle.codes].where((Code code) => action.id != code.id).toList(),
      ),
    ),
  );
}

AppState _setScannedCode(AppState state, SetScannedCode action) {
  return state.copyWith(createCodeState: state.createCodeState.copyWith(code: action.code));
}

AppState _createNewCode(AppState state, CreateNewCode action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      bundle: state.persistentState.bundle.copyWith(codes: <Code>[...state.persistentState.bundle.codes, action.code]),
    ),
  );
}

AppState _selectItemDetails(AppState state, SelectItemDetailsStart action) {
  return state.copyWith(detailsState: state.detailsState.copyWith(selectedId: action.id));
}

AppState _updateAccessTime(AppState state, UpdateAccessTime action) {
  if (state.persistentState.bundle.passwords.any((Password password) => password.id == action.id)) {
    final Password oldPassword =
        state.persistentState.bundle.passwords.firstWhere((Password password) => password.id == action.id);
    final Password password = oldPassword.copyWith(
      timesAccessed: oldPassword.timesAccessed + 1,
      lastAccess: DateTime.now(),
    );
    return state.copyWith(
      persistentState: state.persistentState.copyWith(
        bundle: state.persistentState.bundle.copyWith(
          passwords: state.persistentState.bundle.passwords
              .toList()
              .where((Password password) => password.id != action.id)
              .toList()
            ..add(password),
        ),
      ),
    );
  } else if (state.persistentState.bundle.codes.any((Code code) => code.id == action.id)) {
    final Code oldCode = state.persistentState.bundle.codes.firstWhere((Code code) => code.id == action.id);
    final Code code = oldCode.copyWith(
      timesAccessed: oldCode.timesAccessed + 1,
      lastAccess: DateTime.now(),
    );
    return state.copyWith(
      persistentState: state.persistentState.copyWith(
        bundle: state.persistentState.bundle.copyWith(
          codes: state.persistentState.bundle.codes.toList().where((Code code) => code.id != action.id).toList()
            ..add(
              code,
            ),
        ),
      ),
    );
  }
  return state;
}

AppState _generatePasswordSuccessful(AppState state, GeneratePasswordSuccessful action) {
  return state.copyWith(
    passwordGeneratorState: state.passwordGeneratorState.copyWith(
      password: action.password,
    ),
  );
}

AppState _changePasswordGeneratorCharacterPool(AppState state, ChangePasswordGeneratorCharacterPool action) {
  return state.copyWith(
    passwordGeneratorState: state.passwordGeneratorState.copyWith(
      characterPool: action.characterPool,
    ),
  );
}

AppState _changePasswordGeneratorCharacterLength(AppState state, ChangePasswordGeneratorLength action) {
  return state.copyWith(
    passwordGeneratorState: state.passwordGeneratorState.copyWith(
      length: action.length,
    ),
  );
}

AppState _setWalletPrivateKey(AppState state, SetWalletPrivateKey action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      walletPrivateKey: action.walletPrivateKey,
    ),
  );
}

AppState _setBundle(AppState state, SetBundle action) {
  return state.copyWith(
    persistentState: state.persistentState.copyWith(
      bundle: action.bundle,
    ),
  );
}

AppState _removeFromVault(AppState state, RemoveFromVault action) {
  return state.copyWith(
    vault: state.vault.where((VaultBundle element) => element.type != action.type).toList(),
  );
}

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/utils/password_generator.dart';

class LocalEpic {
  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateNewPassword>(_createNewPassword),
      TypedEpic<AppState, CreateNewCode>(_createNewCode),
      TypedEpic<AppState, DeletePassword>(_deletePassword),
      TypedEpic<AppState, EditPasswordStart>(_editPasswordStart),
      TypedEpic<AppState, DeleteCode>(_deleteCode),
      TypedEpic<AppState, SelectItemDetailsStart>(_selectItemDetailsSuccess),
      TypedEpic<AppState, GeneratePasswordStart>(_generatePassword),
      TypedEpic<AppState, SetWalletPrivateKey>(_setWalletPrivateKey),
    ]);
  }

  Stream<AppAction> _createNewPassword(Stream<CreateNewPassword> actions, EpicStore<AppState> store) {
    return actions.map<AppAction>((CreateNewPassword action) => const SecureStorageStoreBundleStart());
  }

  Stream<AppAction> _editPasswordStart(Stream<EditPasswordStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((EditPasswordStart action) {
      return Stream<void>.value(null)
          .expand<AppAction>(
            (_) => <AppAction>[
              EditPasswordSuccessful(action.pendingId),
              const SecureStorageStoreBundleStart(),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => EditPasswordError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _deletePassword(Stream<DeletePassword> actions, EpicStore<AppState> store) {
    return actions.map<AppAction>((DeletePassword action) => const SecureStorageStoreBundleStart());
  }

  Stream<AppAction> _createNewCode(Stream<CreateNewCode> actions, EpicStore<AppState> store) {
    return actions.map<AppAction>((CreateNewCode action) => const SecureStorageStoreBundleStart());
  }

  Stream<AppAction> _deleteCode(Stream<DeleteCode> actions, EpicStore<AppState> store) {
    return actions.map<AppAction>((DeleteCode action) => const SecureStorageStoreBundleStart());
  }

  Stream<AppAction> _selectItemDetailsSuccess(Stream<SelectItemDetailsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SelectItemDetailsStart action) {
      return Stream<void>.value(null)
          .mapTo<AppAction>(const SelectItemDetailsSuccessful())
          .onErrorReturnWith(SelectItemDetailsError.new)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _generatePassword(Stream<GeneratePasswordStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GeneratePasswordStart action) {
      final PasswordGeneratorState state = store.state.passwordGeneratorState;
      return Stream<void>.value(null)
          .mapTo<AppAction>(
            GeneratePasswordSuccessful(
              generatePassword(
                characterPool: state.characterPool,
                length: state.length,
              ),
            ),
          )
          .onErrorReturnWith(GeneratePasswordError.new);
    });
  }

  Stream<AppAction> _setWalletPrivateKey(Stream<SetWalletPrivateKey> actions, EpicStore<AppState> store) {
    return actions.map((SetWalletPrivateKey action) => const SecureStorageStoreWalletPrivateKeyStart());
  }
}

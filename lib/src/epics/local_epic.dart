import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/models/index.dart';

class LocalEpic {
  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreateNewPassword>(_createNewPassword),
      TypedEpic<AppState, EditPasswordStart>(_editPasswordStart),
      TypedEpic<AppState, SetDetailsPasswordTargetStart>(_setDetailsPasswordTargetStart)
    ]);
  }

  Stream<AppAction> _createNewPassword(Stream<CreateNewPassword> actions, EpicStore<AppState> store) {
    return actions.mapTo(const StoreDataStart());
  }

  Stream<AppAction> _editPasswordStart(Stream<EditPasswordStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((EditPasswordStart action) {
      return Stream<void>.value(null)
          .expand<AppAction>(
            (_) => <AppAction>[
              EditPasswordSuccessful(action.pendingId),
              const StoreDataStart(),
            ],
          )
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => EditPasswordError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _setDetailsPasswordTargetStart(
    Stream<SetDetailsPasswordTargetStart> actions,
    EpicStore<AppState> store,
  ) {
    return actions.flatMap((SetDetailsPasswordTargetStart action) {
      return Stream<void>.value(null)
          .mapTo<AppAction>(const SetDetailsPasswordTargetSuccessful())
          .onErrorReturnWith(SetDetailsPasswordTargetError.new)
          .doOnData(action.onResult);
    });
  }
}

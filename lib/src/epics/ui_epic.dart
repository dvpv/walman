import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';

class UiEpic {
  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, SetEditingStart>(_setEditingStart),
    ]);
  }

  Stream<AppAction> _setEditingStart(Stream<SetEditingStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SetEditingStart action) {
      return Stream<void>.value(null).asyncMap<AppAction>((_) async {
        return SetEditingSuccessful(action.pendingId);
      }).onErrorReturnWith(
        (Object error, StackTrace stackTrace) => SetEditingError(error, stackTrace, action.pendingId),
      );
    });
  }
}

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
    ]);
  }

  Stream<AppAction> _createNewPassword(Stream<CreateNewPassword> actions, EpicStore<AppState> store) {
    return actions.mapTo(const StoreDataStart());
  }
}

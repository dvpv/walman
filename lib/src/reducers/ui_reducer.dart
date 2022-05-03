import 'package:redux/redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> uiReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, ChangeAppPage>(_changeAppPage),
]);

AppState _changeAppPage(AppState state, ChangeAppPage action) {
  return state.copyWith(selectedPage: action.page);
}

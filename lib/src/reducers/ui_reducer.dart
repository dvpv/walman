import 'package:redux/redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> uiReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, ChangeAppPage>(_changeAppPage),
  TypedReducer<AppState, SetEditingStart>(_setEditingStart),
]);

AppState _changeAppPage(AppState state, ChangeAppPage action) {
  return state.copyWith(selectedPage: action.page);
}

AppState _setEditingStart(AppState state, SetEditingStart action) {
  return state.copyWith(editing: action.editing);
}

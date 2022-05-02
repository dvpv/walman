import 'package:redux/redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> uiReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, ToggleAccountManagementList>(_toggleAccountManagementList),
  TypedReducer<AppState, ChangeDrawerPage>(_changeDrawerPage),
]);

AppState _toggleAccountManagementList(AppState state, ToggleAccountManagementList action) {
  return state.copyWith(showAccountManagementOptions: !state.showAccountManagementOptions);
}

AppState _changeDrawerPage(AppState state, ChangeDrawerPage action) {
  return state.copyWith(selectedDrawerPage: action.newPage);
}

import 'package:redux/redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> uiReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, ChangeAppPage>(_changeAppPage),
  TypedReducer<AppState, SetEditingStart>(_setEditingStart),
  TypedReducer<AppState, SelectItemDetails>(_selectItemDetails),
]);

AppState _changeAppPage(AppState state, ChangeAppPage action) {
  return state.copyWith(selectedPage: action.page);
}

AppState _setEditingStart(AppState state, SetEditingStart action) {
  return state.copyWith(detailsState: state.detailsState.copyWith(editing: action.editing));
}

AppState _selectItemDetails(AppState state, SelectItemDetails action) {
  return state.copyWith(detailsState: state.detailsState.copyWith(selectedId: action.selectedId));
}

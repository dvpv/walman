import 'package:redux/redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> uiReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, ChangeAppPage>(_changeAppPage),
  TypedReducer<AppState, SetEditingStart>(_setEditingStart),
  TypedReducer<AppState, ShowPassword>(_showPassword),
  TypedReducer<AppState, GetWalletInfoSuccessful>(_getWalletInfo),
]);

AppState _changeAppPage(AppState state, ChangeAppPage action) {
  return state.copyWith(selectedPage: action.page);
}

AppState _setEditingStart(AppState state, SetEditingStart action) {
  return state.copyWith(detailsState: state.detailsState.copyWith(editing: action.editing));
}

AppState _showPassword(AppState state, ShowPassword action) {
  return state.copyWith(uiState: state.uiState.copyWith(showPassword: action.show));
}

AppState _getWalletInfo(AppState state, GetWalletInfoSuccessful action) {
  return state.copyWith(uiState: state.uiState.copyWith(walletInfo: action.walletInfo));
}

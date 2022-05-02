import 'package:redux/redux.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/models/index.dart';

Reducer<AppState> authReducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, GetDataSuccessful>(_getDataSuccessful),
]);

AppState _getDataSuccessful(AppState state, GetDataSuccessful action) {
  return state.copyWith(bundle: action.bundle ?? const Bundle());
}

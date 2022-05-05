import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/reducers/auth_reducer.dart';
import 'package:walman/src/reducers/local_reducer.dart';
import 'package:walman/src/reducers/storage_reducer.dart';
import 'package:walman/src/reducers/ui_reducer.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is! AppAction) {
    throw ArgumentError('action needs to implement AppAction');
  }
  if (action is ErrorAction) {
    if (kDebugMode) {
      print(action.error);
    }
  }
  final AppState newState = _reducer(state, action);
  return newState;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, ActionStart>(_actionStart),
  TypedReducer<AppState, ActionDone>(_actionDone),
  authReducer,
  uiReducer,
  storageReducer,
  localReducer,
]);

AppState _actionStart(AppState state, ActionStart action) {
  return state.copyWith(pending: <String>{...state.pending, action.pendingId});
}

AppState _actionDone(AppState state, ActionDone action) {
  return state.copyWith(pending: state.pending.toSet()..remove(action.pendingId));
}

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/data/storage/secure_storage_api.dart';
import 'package:walman/src/models/index.dart';

class AuthEpic {
  AuthEpic(this._api);

  final SecureStorageApi _api;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GetDataStart>(_getDataStart),
      TypedEpic<AppState, StoreDataStart>(_storeDataStart),
    ]);
  }

  Stream<GetData> _getDataStart(Stream<GetDataStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetDataStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.getData())
          .map<GetData>((Bundle? data) => GetDataSuccessful(data, action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => GetDataError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<StoreData> _storeDataStart(Stream<StoreDataStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((StoreDataStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.getData())
          .map<StoreData>((Bundle? data) => StoreDataSuccessful(action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => StoreDataError(error, stackTrace, action.pendingId),
          );
    });
  }
}

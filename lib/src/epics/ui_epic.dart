import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/data/storage/blockchain_storage_api.dart';
import 'package:walman/src/models/index.dart';

class UiEpic {
  UiEpic(this._blockchainStorageApi);

  final BlockchainStorageApi _blockchainStorageApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, SetEditingStart>(_setEditingStart),
      TypedEpic<AppState, GetWalletInfoStart>(_getWalletInfo),
    ]);
  }

  Stream<AppAction> _setEditingStart(Stream<SetEditingStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((SetEditingStart action) {
      return Stream<void>.value(null)
          .asyncMap<AppAction>((_) => SetEditingSuccessful(action.pendingId))
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => SetEditingError(error, stackTrace, action.pendingId),
          );
    });
  }

  Stream<AppAction> _getWalletInfo(Stream<GetWalletInfoStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetWalletInfoStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _blockchainStorageApi.getWalletInfo(walletPrivateKey: action.walletPrivateKey))
          .map<AppAction>(GetWalletInfoSuccessful.new)
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => SetEditingError(error, stackTrace, action.pendingId),
          );
    });
  }
}

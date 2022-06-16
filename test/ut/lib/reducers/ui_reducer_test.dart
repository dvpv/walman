import 'package:flutter_test/flutter_test.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/reducers/ui_reducer.dart';

Future<void> main() async {
  const String masterKey = '';
  const WalletInfo walletInfo = WalletInfo(balance: 'all the money', address: 'in my wallet');

  test('_changeAppPage', () {
    const AppState initial = AppState();
    final AppState result = uiReducer(initial, const ChangeAppPage(99));
    expect(result.selectedPage, 99);
  });

  test('_setEditingStart', () {
    const AppState initial = AppState();
    final AppState resultTrue = uiReducer(initial, const SetEditingStart(editing: true, pendingId: masterKey));
    expect(resultTrue.detailsState.editing, true);
    final AppState resultFalse = uiReducer(initial, const SetEditingStart(editing: false, pendingId: masterKey));
    expect(resultFalse.detailsState.editing, false);
  });

  test('_showPassword', () {
    const AppState initial = AppState();
    final AppState resultTrue = uiReducer(initial, const ShowPassword(show: true));
    expect(resultTrue.uiState.showPassword, true);
    final AppState resultFalse = uiReducer(initial, const ShowPassword(show: false));
    expect(resultFalse.uiState.showPassword, false);
  });

  test('_getWalletInfo', () {
    const AppState initial = AppState();
    final AppState result = uiReducer(initial, const GetWalletInfoSuccessful(walletInfo, masterKey));
    expect(result.uiState.walletInfo, walletInfo);
  });

  test('_createWallet', () {
    const AppState initial = AppState();
    final AppState result = uiReducer(initial, const CreateWalletSuccessful(masterKey));
    expect(result.persistentState.walletPrivateKey, masterKey);
  });

  test('_triggerUpdate', () {
    const AppState initial = AppState();
    final AppState result = uiReducer(initial, const TriggerUpdate());
    expect(result, initial);
  });
}

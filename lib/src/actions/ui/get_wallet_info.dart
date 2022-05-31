part of 'index.dart';

const String _kGetWalletInfoPendingId = 'GetWalletInfo';

@freezed
class GetWalletInfo with _$GetWalletInfo implements AppAction {
  @Implements<ActionStart>()
  const factory GetWalletInfo.start({
    required String walletPrivateKey,
    @Default(_kGetWalletInfoPendingId) String pendingId,
  }) = GetWalletInfoStart;

  @Implements<ActionDone>()
  const factory GetWalletInfo.successful(
    WalletInfo walletInfo,
    String pendingId,
  ) = GetWalletInfoSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetWalletInfo.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetWalletInfoPendingId) String pendingId,
  ]) = GetWalletInfoError;

  static String get pendingKey => _kGetWalletInfoPendingId;
}

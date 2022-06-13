part of 'index.dart';

const String _kStoreWalletPrivateKeyPendingId = 'StoreWalletPrivateKey';

@freezed
class StoreWalletPrivateKey with _$StoreWalletPrivateKey implements AppAction {
  @Implements<ActionStart>()
  const factory StoreWalletPrivateKey.start({
    required String? walletPrivateKey,
    required String masterKey,
    @Default(_kStoreWalletPrivateKeyPendingId) String pendingId,
  }) = StoreWalletPrivateKeyStart;

  @Implements<ActionDone>()
  const factory StoreWalletPrivateKey.successful([
    @Default(_kStoreWalletPrivateKeyPendingId) String pendingId,
  ]) = StoreWalletPrivateKeySuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory StoreWalletPrivateKey.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kStoreWalletPrivateKeyPendingId) String pendingId,
  ]) = StoreWalletPrivateKeyError;

  static String get pendingKey => _kStoreWalletPrivateKeyPendingId;
}

const String _kGetWalletPrivateKeyPendingId = 'GetWalletPrivateKey';

@freezed
class GetWalletPrivateKey with _$GetWalletPrivateKey implements AppAction {
  @Implements<ActionStart>()
  const factory GetWalletPrivateKey.start({
    required String masterKey,
    @Default(_kGetWalletPrivateKeyPendingId) String pendingId,
  }) = GetWalletPrivateKeyStart;

  @Implements<ActionDone>()
  const factory GetWalletPrivateKey.successful({
    required String? walletPrivateKey,
    @Default(_kGetWalletPrivateKeyPendingId) String pendingId,
  }) = GetWalletPrivateKeySuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetWalletPrivateKey.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetWalletPrivateKeyPendingId) String pendingId,
  ]) = GetWalletPrivateKeyError;

  static String get pendingKey => _kGetWalletPrivateKeyPendingId;
}

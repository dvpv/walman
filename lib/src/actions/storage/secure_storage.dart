part of 'index.dart';

const String _kSecureStorageStoreBundlePendingId = 'SecureStorageStoreBundle';

@freezed
class SecureStorageStoreBundle with _$SecureStorageStoreBundle implements AppAction {
  @Implements<ActionStart>()
  const factory SecureStorageStoreBundle.start({
    /*
    * Needed for the cases where there is concurrency between this and state upgrade.
    * */
    Bundle? bundle,
    @Default(_kSecureStorageStoreBundlePendingId) String pendingId,
  }) = SecureStorageStoreBundleStart;

  @Implements<ActionDone>()
  const factory SecureStorageStoreBundle.successful([
    @Default(_kSecureStorageStoreBundlePendingId) String pendingId,
  ]) = SecureStorageStoreBundleSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SecureStorageStoreBundle.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSecureStorageStoreBundlePendingId) String pendingId,
  ]) = SecureStorageStoreBundleError;

  static String get pendingKey => _kSecureStorageStoreBundlePendingId;
}

const String _kSecureStorageGetBundlePendingId = 'SecureStorageGetBundle';

@freezed
class SecureStorageGetBundle with _$SecureStorageGetBundle implements AppAction {
  @Implements<ActionStart>()
  const factory SecureStorageGetBundle.start({
    /*
    * Needed for the cases where there is concurrency between this and state upgrade.
    * */
    String? masterKey,
    @Default(_kSecureStorageGetBundlePendingId) String pendingId,
  }) = SecureStorageGetBundleStart;

  @Implements<ActionDone>()
  const factory SecureStorageGetBundle.successful({
    required Bundle bundle,
    @Default(_kSecureStorageGetBundlePendingId) String pendingId,
  }) = SecureStorageGetBundleSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SecureStorageGetBundle.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSecureStorageGetBundlePendingId) String pendingId,
  ]) = SecureStorageGetBundleError;

  static String get pendingKey => _kSecureStorageGetBundlePendingId;
}

const String _kSecureStorageStoreWalletPrivateKeyPendingId = 'SecureStorageStoreWalletPrivateKey';

@freezed
class SecureStorageStoreWalletPrivateKey with _$SecureStorageStoreWalletPrivateKey implements AppAction {
  @Implements<ActionStart>()
  const factory SecureStorageStoreWalletPrivateKey.start({
    @Default(_kSecureStorageStoreWalletPrivateKeyPendingId) String pendingId,
  }) = SecureStorageStoreWalletPrivateKeyStart;

  @Implements<ActionDone>()
  const factory SecureStorageStoreWalletPrivateKey.successful([
    @Default(_kSecureStorageStoreWalletPrivateKeyPendingId) String pendingId,
  ]) = SecureStorageStoreWalletPrivateKeySuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SecureStorageStoreWalletPrivateKey.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSecureStorageStoreWalletPrivateKeyPendingId) String pendingId,
  ]) = SecureStorageStoreWalletPrivateKeyError;

  static String get pendingKey => _kSecureStorageStoreWalletPrivateKeyPendingId;
}

const String _kSecureStorageGetWalletPrivateKeyPendingId = 'SecureStorageGetWalletPrivateKey';

@freezed
class SecureStorageGetWalletPrivateKey with _$SecureStorageGetWalletPrivateKey implements AppAction {
  @Implements<ActionStart>()
  const factory SecureStorageGetWalletPrivateKey.start({
    /*
    * Needed for the cases where there is concurrency between this and state upgrade.
    * */
    String? masterKey,
    @Default(_kSecureStorageGetWalletPrivateKeyPendingId) String pendingId,
  }) = SecureStorageGetWalletPrivateKeyStart;

  @Implements<ActionDone>()
  const factory SecureStorageGetWalletPrivateKey.successful({
    required String? walletPrivateKey,
    @Default(_kSecureStorageGetWalletPrivateKeyPendingId) String pendingId,
  }) = SecureStorageGetWalletPrivateKeySuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SecureStorageGetWalletPrivateKey.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSecureStorageGetWalletPrivateKeyPendingId) String pendingId,
  ]) = SecureStorageGetWalletPrivateKeyError;

  static String get pendingKey => _kSecureStorageGetWalletPrivateKeyPendingId;
}

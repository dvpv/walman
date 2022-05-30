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

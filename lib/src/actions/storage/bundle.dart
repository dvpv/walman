part of 'index.dart';

const String _kStoreBundlePendingId = 'StoreBundle';

@freezed
class StoreBundle with _$StoreBundle implements AppAction {
  @Implements<ActionStart>()
  const factory StoreBundle.start({
    required Bundle bundle,
    @Default(_kStoreBundlePendingId) String pendingId,
  }) = StoreBundleStart;

  @Implements<ActionDone>()
  const factory StoreBundle.successful([
    @Default(_kStoreBundlePendingId) String pendingId,
  ]) = StoreBundleSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory StoreBundle.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kStoreBundlePendingId) String pendingId,
  ]) = StoreBundleError;

  static String get pendingKey => _kStoreBundlePendingId;
}

const String _kGetBundlePendingId = 'GetBundle';

@freezed
class GetBundle with _$GetBundle implements AppAction {
  @Implements<ActionStart>()
  const factory GetBundle.start({
    required String masterKey,
    @Default(_kGetBundlePendingId) String pendingId,
  }) = GetBundleStart;

  @Implements<ActionDone>()
  const factory GetBundle.successful({
    required Bundle bundle,
    @Default(_kGetBundlePendingId) String pendingId,
  }) = GetBundleSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetBundle.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetBundlePendingId) String pendingId,
  ]) = GetBundleError;

  static String get pendingKey => _kGetBundlePendingId;
}

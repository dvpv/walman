part of 'index.dart';

const String _kBlockchainAddBundlePendingId = 'BlockchainAddBundle';

@freezed
class BlockchainAddBundle with _$BlockchainAddBundle implements AppAction {
  @Implements<ActionStart>()
  const factory BlockchainAddBundle.start({
    required Bundle bundle,
    @Default(_kBlockchainAddBundlePendingId) String pendingId,
  }) = BlockchainAddBundleStart;

  @Implements<ActionDone>()
  const factory BlockchainAddBundle.successful([
    @Default(_kBlockchainAddBundlePendingId) String pendingId,
  ]) = BlockchainAddBundleSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory BlockchainAddBundle.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kBlockchainAddBundlePendingId) String pendingId,
  ]) = BlockchainAddBundleError;

  static String get pendingKey => _kBlockchainAddBundlePendingId;
}

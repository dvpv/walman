part of 'index.dart';

const String _kBlockchainAddBundlePendingId = 'BlockchainAddBundle';

@freezed
class BlockchainAddBundle with _$BlockchainAddBundle implements AppAction {
  @Implements<ActionStart>()
  const factory BlockchainAddBundle.start({
    required String walletPrivateKey,
    required Bundle bundle,
    ActionResult? onResult,
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

const String _kBlockchainRestoreLatestBundlePendingId = 'BlockchainRestoreLatestBundle';

@freezed
class BlockchainRestoreLatestBundle with _$BlockchainRestoreLatestBundle implements AppAction {
  @Implements<ActionStart>()
  const factory BlockchainRestoreLatestBundle.start({
    required String walletPrivateKey,
    ActionResult? onResult,
    @Default(_kBlockchainRestoreLatestBundlePendingId) String pendingId,
  }) = BlockchainRestoreLatestBundleStart;

  @Implements<ActionDone>()
  const factory BlockchainRestoreLatestBundle.successful({
    required Bundle bundle,
    @Default(_kBlockchainRestoreLatestBundlePendingId) String pendingId,
  }) = BlockchainRestoreLatestBundleSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory BlockchainRestoreLatestBundle.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kBlockchainRestoreLatestBundlePendingId) String pendingId,
  ]) = BlockchainRestoreLatestBundleError;

  static String get pendingKey => _kBlockchainRestoreLatestBundlePendingId;
}

const String _kBlockchainGetVaultPendingId = 'BlockchainGetVault';

@freezed
class BlockchainGetVault with _$BlockchainGetVault implements AppAction {
  @Implements<ActionStart>()
  const factory BlockchainGetVault.start({
    required String masterKey,
    required String walletPrivateKey,
    @Default(_kBlockchainGetVaultPendingId) String pendingId,
  }) = BlockchainGetVaultStart;

  @Implements<ActionDone>()
  const factory BlockchainGetVault.successful({
    required List<VaultBundle> vault,
    @Default(_kBlockchainGetVaultPendingId) String pendingId,
  }) = BlockchainGetVaultSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory BlockchainGetVault.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kBlockchainGetVaultPendingId) String pendingId,
  ]) = BlockchainGetVaultError;

  static String get pendingKey => _kBlockchainGetVaultPendingId;
}

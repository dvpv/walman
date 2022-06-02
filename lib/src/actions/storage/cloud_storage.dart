part of 'index.dart';

@freezed
class CloudAddBundle with _$CloudAddBundle implements AppAction {
  const factory CloudAddBundle({
    required String masterKey,
    required Bundle bundle,
    required List<VaultBundle> vault,
    required FirebaseUser firebaseUser,
  }) = CloudAddBundle$;
}

const String _kCloudStoreVaultPendingId = 'CloudStoreVault';

@freezed
class CloudStoreVault with _$CloudStoreVault implements AppAction {
  @Implements<ActionStart>()
  const factory CloudStoreVault.start({
    required String masterKey,
    required List<VaultBundle> vault,
    required FirebaseUser firebaseUser,
    @Default(_kCloudStoreVaultPendingId) String pendingId,
  }) = CloudStoreVaultStart;

  @Implements<ActionDone>()
  const factory CloudStoreVault.successful([
    @Default(_kCloudStoreVaultPendingId) String pendingId,
  ]) = CloudStoreVaultSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory CloudStoreVault.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kCloudStoreVaultPendingId) String pendingId,
  ]) = CloudStoreVaultError;

  static String get pendingKey => _kCloudStoreVaultPendingId;
}

const String _kCloudGetVaultPendingId = 'CloudGetVault';

@freezed
class CloudGetVault with _$CloudGetVault implements AppAction {
  @Implements<ActionStart>()
  const factory CloudGetVault.start({
    required FirebaseUser firebaseUser,
    required String masterKey,
    @Default(_kCloudGetVaultPendingId) String pendingId,
  }) = CloudGetVaultStart;

  @Implements<ActionDone>()
  const factory CloudGetVault.successful({
    required List<VaultBundle> vault,
    @Default(_kCloudGetVaultPendingId) String pendingId,
  }) = CloudGetVaultSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory CloudGetVault.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kCloudGetVaultPendingId) String pendingId,
  ]) = CloudGetVaultError;

  static String get pendingKey => _kCloudGetVaultPendingId;
}

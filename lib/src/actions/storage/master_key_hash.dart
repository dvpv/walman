part of 'index.dart';

const String _kGetMasterKeyHashPendingId = 'GetMasterKeyHash';

@freezed
class GetMasterKeyHash with _$GetMasterKeyHash implements AppAction {
  @Implements<ActionStart>()
  const factory GetMasterKeyHash.start({
    @Default(_kGetMasterKeyHashPendingId) String pendingId,
  }) = GetMasterKeyHashStart;

  @Implements<ActionDone>()
  const factory GetMasterKeyHash.successful({
    required String? masterKeyHash,
    @Default(_kGetMasterKeyHashPendingId) String pendingId,
  }) = GetMasterKeyHashSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetMasterKeyHash.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetMasterKeyHashPendingId) String pendingId,
  ]) = GetMasterKeyHashError;

  static String get pendingKey => _kGetMasterKeyHashPendingId;
}

const String _kStoreMasterKeyHashPendingId = 'StoreMasterKeyHash';

@freezed
class StoreMasterKeyHash with _$StoreMasterKeyHash implements AppAction {
  @Implements<ActionStart>()
  const factory StoreMasterKeyHash.start({
    required String? masterKeyHash,
    @Default(_kStoreMasterKeyHashPendingId) String pendingId,
  }) = StoreMasterKeyHashStart;

  @Implements<ActionDone>()
  const factory StoreMasterKeyHash.successful({
    @Default(_kStoreMasterKeyHashPendingId) String pendingId,
  }) = StoreMasterKeyHashSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory StoreMasterKeyHash.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kStoreMasterKeyHashPendingId) String pendingId,
  ]) = StoreMasterKeyHashError;

  static String get pendingKey => _kStoreMasterKeyHashPendingId;
}

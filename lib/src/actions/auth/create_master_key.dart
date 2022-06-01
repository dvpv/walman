part of 'index.dart';

const String _kCreateMasterKeyPendingId = 'CreateMasterKey';

@freezed
class CreateMasterKey with _$CreateMasterKey implements AppAction {
  @Implements<ActionStart>()
  const factory CreateMasterKey.start({
    required String masterKey,
    @Default(_kCreateMasterKeyPendingId) String pendingId,
  }) = CreateMasterKeyStart;

  @Implements<ActionDone>()
  const factory CreateMasterKey.successful({
    required String masterKey,
    @Default(_kCreateMasterKeyPendingId) String pendingId,
  }) = CreateMasterKeySuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory CreateMasterKey.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kCreateMasterKeyPendingId) String pendingId,
  ]) = CreateMasterKeyError;

  static String get pendingKey => _kCreateMasterKeyPendingId;
}

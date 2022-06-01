part of 'index.dart';

const String _kUnlockAppPendingId = 'UnlockApp';

@freezed
class UnlockApp with _$UnlockApp implements AppAction {
  @Implements<ActionStart>()
  const factory UnlockApp.start({
    required String masterKey,
    required String masterKeyHash,
    @Default(_kUnlockAppPendingId) String pendingId,
  }) = UnlockAppStart;

  @Implements<ActionDone>()
  const factory UnlockApp.successful({
    required String? masterKey,
    @Default(_kUnlockAppPendingId) String pendingId,
  }) = UnlockAppSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory UnlockApp.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kUnlockAppPendingId) String pendingId,
  ]) = UnlockAppError;

  static String get pendingKey => _kUnlockAppPendingId;
}

part of 'index.dart';

const String _kFirebaseChangePasswordPendingId = 'FirebaseChangePassword';

@freezed
class FirebaseChangePassword with _$FirebaseChangePassword implements AppAction {
  @Implements<ActionStart>()
  const factory FirebaseChangePassword.start({
    required String currentPassword,
    required String newPassword,
    required FirebaseUser firebaseUser,
    required ActionResult onResult,
    @Default(_kFirebaseChangePasswordPendingId) String pendingId,
  }) = FirebaseChangePasswordStart;

  @Implements<ActionDone>()
  const factory FirebaseChangePassword.successful({
    @Default(_kFirebaseChangePasswordPendingId) String pendingId,
  }) = FirebaseChangePasswordSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory FirebaseChangePassword.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kFirebaseChangePasswordPendingId) String pendingId,
  ]) = FirebaseChangePasswordError;

  static String get pendingKey => _kFirebaseChangePasswordPendingId;
}

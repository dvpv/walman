part of 'index.dart';

const String _kFirebaseLoginPendingId = 'FirebaseLogin';

@freezed
class FirebaseLogin with _$FirebaseLogin implements AppAction {
  @Implements<ActionStart>()
  const factory FirebaseLogin.start({
    required String email,
    required String password,
    required ActionResult onResult,
    @Default(_kFirebaseLoginPendingId) String pendingId,
  }) = FirebaseLoginStart;

  @Implements<ActionDone>()
  const factory FirebaseLogin.successful({
    required FirebaseUser firebaseUser,
    @Default(_kFirebaseLoginPendingId) String pendingId,
  }) = FirebaseLoginSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory FirebaseLogin.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kFirebaseLoginPendingId) String pendingId,
  ]) = FirebaseLoginError;

  static String get pendingKey => _kFirebaseLoginPendingId;
}

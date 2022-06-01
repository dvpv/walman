part of 'index.dart';

const String _kFirebaseSignUpPendingId = 'FirebaseSignUp';

@freezed
class FirebaseSignUp with _$FirebaseSignUp implements AppAction {
  @Implements<ActionStart>()
  const factory FirebaseSignUp.start({
    required String email,
    required String password,
    required String username,
    required ActionResult onResult,
    @Default(_kFirebaseSignUpPendingId) String pendingId,
  }) = FirebaseSignUpStart;

  @Implements<ActionDone>()
  const factory FirebaseSignUp.successful({
    required FirebaseUser firebaseUser,
    @Default(_kFirebaseSignUpPendingId) String pendingId,
  }) = FirebaseSignUpSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory FirebaseSignUp.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kFirebaseSignUpPendingId) String pendingId,
  ]) = FirebaseSignUpError;

  static String get pendingKey => _kFirebaseSignUpPendingId;
}

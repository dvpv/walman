part of 'index.dart';

const String _kSignUpPendingId = 'SignUp';

@freezed
class SignUp with _$SignUp implements AppAction {
  @Implements<ActionStart>()
  const factory SignUp.start({
    required String email,
    required String password,
    required String username,
    required ActionResult onResult,
    @Default(_kSignUpPendingId) String pendingId,
  }) = SignUpStart;

  @Implements<ActionDone>()
  const factory SignUp.successful(
    AppUser user, [
    @Default(_kSignUpPendingId) String pendingId,
  ]) = SignUpSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SignUp.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSignUpPendingId) String pendingId,
  ]) = SignUpError;

  static String get pendingKey => _kSignUpPendingId;
}

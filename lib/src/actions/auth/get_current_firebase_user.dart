part of 'index.dart';

const String _kGetCurrentFirebaseUserPendingId = 'GetCurrentFirebaseUser';

@freezed
class GetCurrentFirebaseUser with _$GetCurrentFirebaseUser implements AppAction {
  @Implements<ActionStart>()
  const factory GetCurrentFirebaseUser.start({
    @Default(_kGetCurrentFirebaseUserPendingId) String pendingId,
  }) = GetCurrentFirebaseUserStart;

  @Implements<ActionDone>()
  const factory GetCurrentFirebaseUser.successful({
    FirebaseUser? firebaseUser,
    @Default(_kGetCurrentFirebaseUserPendingId) String pendingId,
  }) = GetCurrentFirebaseUserSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetCurrentFirebaseUser.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetCurrentFirebaseUserPendingId) String pendingId,
  ]) = GetCurrentFirebaseUserError;

  static String get pendingKey => _kGetCurrentFirebaseUserPendingId;
}

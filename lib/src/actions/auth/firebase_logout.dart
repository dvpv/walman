part of 'index.dart';

const String _kFirebaseLogoutPendingId = 'FirebaseLogout';

@freezed
class FirebaseLogout with _$FirebaseLogout implements AppAction {
  @Implements<ActionStart>()
  const factory FirebaseLogout.start({
    @Default(_kFirebaseLogoutPendingId) String pendingId,
  }) = FirebaseLogoutStart;

  @Implements<ActionDone>()
  const factory FirebaseLogout.successful([
    @Default(_kFirebaseLogoutPendingId) String pendingId,
  ]) = FirebaseLogoutSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory FirebaseLogout.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kFirebaseLogoutPendingId) String pendingId,
  ]) = FirebaseLogoutError;

  static String get pendingKey => _kFirebaseLogoutPendingId;
}

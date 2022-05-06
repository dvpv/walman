part of 'index.dart';

const String _kEditPasswordPendingId = 'EditPassword';

@freezed
class EditPassword with _$EditPassword implements AppAction {
  @Implements<ActionStart>()
  const factory EditPassword.start(
    Password password, {
    @Default(_kEditPasswordPendingId) String pendingId,
  }) = EditPasswordStart;

  @Implements<ActionDone>()
  const factory EditPassword.successful([
    @Default(_kEditPasswordPendingId) String pendingId,
  ]) = EditPasswordSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory EditPassword.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kEditPasswordPendingId) String pendingId,
  ]) = EditPasswordError;

  static String get pendingKey => _kEditPasswordPendingId;
}

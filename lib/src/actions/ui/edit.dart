part of 'index.dart';

const String _kSetEditingPendingId = 'SetEditing';

@freezed
class SetEditing with _$SetEditing implements AppAction {
  @Implements<ActionStart>()
  const factory SetEditing.start({
    required bool editing,
    @Default(_kSetEditingPendingId) String pendingId,
  }) = SetEditingStart;

  @Implements<ActionDone>()
  const factory SetEditing.successful([
    @Default(_kSetEditingPendingId) String pendingId,
  ]) = SetEditingSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SetEditing.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSetEditingPendingId) String pendingId,
  ]) = SetEditingError;

  static String get pendingKey => _kSetEditingPendingId;
}

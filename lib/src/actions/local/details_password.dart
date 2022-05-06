part of 'index.dart';

@freezed
class SetDetailsPasswordTarget with _$SetDetailsPasswordTarget implements AppAction {
  const factory SetDetailsPasswordTarget(Password password, ActionResult onResult) = SetDetailsPasswordTargetStart;

  const factory SetDetailsPasswordTarget.successful() = SetDetailsPasswordTargetSuccessful;

  @Implements<ErrorAction>()
  const factory SetDetailsPasswordTarget.error(Object error, StackTrace stackTrace) = SetDetailsPasswordTargetError;
}

part of 'index.dart';

@freezed
class SelectItemDetails with _$SelectItemDetails implements AppAction {
  const factory SelectItemDetails(String id, ActionResult onResult) = SelectItemDetailsStart;

  const factory SelectItemDetails.successful() = SelectItemDetailsSuccessful;

  @Implements<ErrorAction>()
  const factory SelectItemDetails.error(Object error, StackTrace stackTrace) = SelectItemDetailsError;
}

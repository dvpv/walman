part of 'index.dart';

@freezed
class CreateNewPassword with _$CreateNewPassword implements AppAction {
  const factory CreateNewPassword(Password password) = CreateNewPassword$;
}

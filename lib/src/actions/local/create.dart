part of 'index.dart';

@freezed
class CreateNewPassword with _$CreateNewPassword implements AppAction {
  const factory CreateNewPassword(Password password) = CreateNewPassword$;
}

// @freezed
// class CreateNewPassword with _$CreateNewPassword implements AppAction {
//   const factory CreateNewPassword({
//     required String title,
//     required String username,
//     required String password,
//     @Default('') String note,
//   }) = CreateNewPasswordStart;
//
//   const factory CreateNewPassword.successful(Password password) = CreateNewPasswordSuccessful;
//
//   @Implements<ErrorAction>()
//   const factory CreateNewPassword.error(Object error, StackTrace stackTrace) = CreateNewPasswordError;
// }

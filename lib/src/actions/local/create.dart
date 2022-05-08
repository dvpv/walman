part of 'index.dart';

@freezed
class CreateNewPassword with _$CreateNewPassword implements AppAction {
  const factory CreateNewPassword(Password password, String masterKey) = CreateNewPassword$;
}

@freezed
class CreateNewCode with _$CreateNewCode implements AppAction {
  const factory CreateNewCode(Code code, String masterKey) = CreateNewCode$;
}

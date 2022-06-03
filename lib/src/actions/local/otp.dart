part of 'index.dart';

@freezed
class CreateNewOTPToken with _$CreateNewOTPToken implements AppAction {
  const factory CreateNewOTPToken(String scanResult) = CreateNewOTPTokenStart;

  const factory CreateNewOTPToken.successful(OTPToken otpToken) = CreateNewOTPTokenSuccessful;

  @Implements<ErrorAction>()
  const factory CreateNewOTPToken.error(Object error, StackTrace stackTrace) = CreateNewOTPTokenError;
}

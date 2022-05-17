part of 'index.dart';

@freezed
class GeneratePassword with _$GeneratePassword implements AppAction {
  const factory GeneratePassword() = GeneratePasswordStart;

  const factory GeneratePassword.successful(String password) = GeneratePasswordSuccessful;

  @Implements<ErrorAction>()
  const factory GeneratePassword.error(Object error, StackTrace stackTrace) = GeneratePasswordError;
}

@freezed
class ChangePasswordGeneratorLength with _$ChangePasswordGeneratorLength implements AppAction {
  const factory ChangePasswordGeneratorLength({required int length}) = ChangePasswordGeneratorLength$;
}

@freezed
class ChangePasswordGeneratorCharacterPool with _$ChangePasswordGeneratorCharacterPool implements AppAction {
  const factory ChangePasswordGeneratorCharacterPool({
    required Set<CharacterPool> characterPool,
  }) = ChangePasswordGeneratorCharacterPool$;
}

part of 'index.dart';

@freezed
class ShowPassword with _$ShowPassword implements AppAction {
  const factory ShowPassword({required bool show}) = ShowPassword$;
}

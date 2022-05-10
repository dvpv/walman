part of 'index.dart';

@freezed
class DeleteCode with _$DeleteCode implements AppAction {
  const factory DeleteCode(String id) = DeleteCode$;
}

@freezed
class DeletePassword with _$DeletePassword implements AppAction {
  const factory DeletePassword(String id) = DeletePassword$;
}

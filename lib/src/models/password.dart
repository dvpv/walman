part of 'index.dart';

@freezed
class Password with _$Password {
  const factory Password({
    required String title,
    required String username,
    required String password,
    required String note,
    required DateTime createdAt,
  }) = Password$;

  factory Password.fromJson(Map<dynamic, dynamic> json) => _$PasswordFromJson(Map<String, dynamic>.from(json));
}

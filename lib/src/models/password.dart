part of 'index.dart';

@freezed
class Password with _$Password implements BundleItem {
  factory Password({
    required String id,
    required String title,
    required String username,
    required String password,
    required String note,
    required DateTime createdAt,
    required DateTime lastAccess,
    @Default(0) int timesAccessed,
  }) = Password$;

  factory Password.fromJson(Map<dynamic, dynamic> json) => _$PasswordFromJson(Map<String, dynamic>.from(json));
}

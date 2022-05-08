part of 'index.dart';

@freezed
class Code with _$Code {
  const factory Code({
    required String id,
    @Default('') String title,
    required String data,
    required BarcodeFormat format,
    @Default('') String note,
    required DateTime createdAt,
    required DateTime lastAccess,
    @Default(0) int timesAccessed,
  }) = Code$;

  factory Code.fromJson(Map<dynamic, dynamic> json) => _$CodeFromJson(Map<String, dynamic>.from(json));
}

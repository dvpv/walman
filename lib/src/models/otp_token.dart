part of 'index.dart';

@freezed
class OTPToken with _$OTPToken implements BundleItem {
  const factory OTPToken({
    required String id,
    required String title,
    required DateTime createdAt,
    required DateTime lastAccess,
    required int timesAccessed,
    required OTPStandard standard,
    required String path,
    required String secret,
    required String issuer,
    required OTPAlgorithm algorithm,
    required int period,
    required int digits,
    required Uri keyUri,
  }) = OTPToken$;

  factory OTPToken.fromJson(Map<dynamic, dynamic> json) => _$OTPTokenFromJson(Map<String, dynamic>.from(json));
}

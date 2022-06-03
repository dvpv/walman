part of 'index.dart';

enum BundleType {
  blockchain,
  cloud,
}

@freezed
class Bundle with _$Bundle {
  const factory Bundle({
    @Default(<Password>[]) List<Password> passwords,
    @Default(<Code>[]) List<Code> codes,
    @Default(<OTPToken>[]) List<OTPToken> otpTokens,
  }) = Bundle$;

  factory Bundle.fromJson(Map<dynamic, dynamic> json) => _$BundleFromJson(Map<String, dynamic>.from(json));
}

extension BundleExtension on Bundle {
  int get itemCount {
    return codes.length + passwords.length + otpTokens.length;
  }
}

@freezed
class VaultBundle with _$VaultBundle {
  const factory VaultBundle({
    required Bundle bundle,
    required DateTime storedAt,
    required BundleType type,
  }) = VaultBundle$;

  factory VaultBundle.fromJson(Map<dynamic, dynamic> json) => _$VaultBundleFromJson(Map<String, dynamic>.from(json));
}

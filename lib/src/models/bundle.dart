part of 'index.dart';

@freezed
class Bundle with _$Bundle {
  const factory Bundle({
    @Default(<Password>[]) List<Password> passwords,
    @Default(<Code>[]) List<Code> codes,
  }) = Bundle$;

  factory Bundle.fromJson(Map<dynamic, dynamic> json) => _$BundleFromJson(Map<String, dynamic>.from(json));
}

@freezed
class BlockchainBundle with _$BlockchainBundle {
  const factory BlockchainBundle({
    required Bundle bundle,
    required DateTime storedAt,
  }) = BlockchainBundle$;

  factory BlockchainBundle.fromJson(Map<dynamic, dynamic> json) =>
      _$BlockchainBundleFromJson(Map<String, dynamic>.from(json));
}

@freezed
class BlockchainVault with _$BlockchainVault {
  const factory BlockchainVault({
    required List<Bundle> bundles,
  }) = BlockchainVault$;

  factory BlockchainVault.fromJson(Map<dynamic, dynamic> json) =>
      _$BlockchainVaultFromJson(Map<String, dynamic>.from(json));
}

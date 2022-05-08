part of 'index.dart';

@freezed
class Bundle with _$Bundle {
  const factory Bundle({
    @Default(<Password>[]) List<Password> passwords,
    @Default(<Code>[]) List<Code> codes,
  }) = Bundle$;

  factory Bundle.fromJson(Map<dynamic, dynamic> json) => _$BundleFromJson(Map<String, dynamic>.from(json));
}

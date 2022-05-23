part of 'index.dart';

@freezed
class Secret with _$Secret {
  const factory Secret({
    required String walletPrivateKey,
    required String walletPublicKey,
  }) = Secret$;

  factory Secret.fromJson(Map<dynamic, dynamic> json) => _$SecretFromJson(Map<String, dynamic>.from(json));
}

part of 'index.dart';

@freezed
class FirebaseUser with _$FirebaseUser {
  const factory FirebaseUser({
    required String uid,
    required String email,
    required String username,
  }) = FirebaseUser$;

  factory FirebaseUser.fromJson(Map<dynamic, dynamic> json) => _$FirebaseUserFromJson(Map<String, dynamic>.from(json));
}

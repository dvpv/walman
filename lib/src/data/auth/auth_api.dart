import 'package:walman/src/models/index.dart';

abstract class AuthApi {
  Future<AppUser> login({required String email, required String password});

  Future<void> logout();

  Future<AppUser> signup({required String email, required String password, required String username});

  Future<AppUser?> getCurrentUser();
}

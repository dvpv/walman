import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:walman/src/data/auth/auth_api.dart';
import 'package:walman/src/models/index.dart';

class FirebaseAuthApi implements AuthApi {
  FirebaseAuthApi(this._auth);

  final firebase.FirebaseAuth _auth;

  @override
  Future<AppUser> signup({required String email, required String password, required String username}) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
    await _auth.currentUser!.updateDisplayName(username);
    return AppUser(
      uid: _auth.currentUser!.uid,
      username: username,
      email: email,
    );
  }

  @override
  Future<AppUser?> getCurrentUser() async {
    throw UnimplementedError();
  }

  @override
  Future<AppUser> login({required String email, required String password}) async {
    final firebase.UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final firebase.User user = credential.user!;
    return AppUser(
      uid: user.uid,
      email: user.email!,
      username: user.displayName!,
    );
  }

  @override
  Future<void> logout() async {
    throw UnimplementedError();
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:walman/src/models/index.dart';

class FirebaseAuthApi {
  FirebaseAuthApi(this._auth);

  final FirebaseAuth _auth;

  Future<FirebaseUser> signup({required String email, required String password, required String username}) async {
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
    await _auth.currentUser!.updateDisplayName(username);
    return FirebaseUser(
      uid: _auth.currentUser!.uid,
      username: username,
      email: email,
    );
  }

  Future<FirebaseUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;
    if (user != null) {
      return FirebaseUser(uid: user.uid, email: user.email!, username: user.displayName!);
    } else {
      return null;
    }
  }

  Future<FirebaseUser> login({required String email, required String password}) async {
    final UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = credential.user!;
    return FirebaseUser(
      uid: user.uid,
      email: user.email!,
      username: user.displayName!,
    );
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}

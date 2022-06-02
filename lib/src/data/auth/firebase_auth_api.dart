import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:walman/src/models/index.dart';

class FirebaseAuthApi {
  FirebaseAuthApi({required this.auth, required this.firestore});

  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  Future<FirebaseUser> signup({required String email, required String password, required String username}) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
    await auth.currentUser!.updateDisplayName(username);
    await firestore.doc('vaults/${auth.currentUser!.uid}').set(<String, dynamic>{});
    return FirebaseUser(
      uid: auth.currentUser!.uid,
      username: username,
      email: email,
    );
  }

  Future<FirebaseUser?> getCurrentUser() async {
    final User? user = auth.currentUser;
    if (user != null) {
      return FirebaseUser(uid: user.uid, email: user.email!, username: user.displayName!);
    } else {
      return null;
    }
  }

  Future<FirebaseUser> login({required String email, required String password}) async {
    final UserCredential credential = await auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = credential.user!;
    return FirebaseUser(
      uid: user.uid,
      email: user.email!,
      username: user.displayName!,
    );
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
    required FirebaseUser firebaseUser,
  }) async {
    final AuthCredential credential = EmailAuthProvider.credential(
      email: firebaseUser.email,
      password: currentPassword,
    );
    await auth.currentUser!.reauthenticateWithCredential(credential);
    await auth.currentUser!.updatePassword(newPassword);
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}

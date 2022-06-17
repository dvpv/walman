// ignore_for_file: always_specify_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:walman/src/data/auth/firebase_auth_api.dart';
import 'package:walman/src/models/index.dart';

class MockFirebaseAuth with Mock implements FirebaseAuth {}

// ignore: avoid_implementing_value_types
class MockFirebaseFirestore with Mock implements FirebaseFirestore {}

class MockUserCredential with Mock implements UserCredential {}

class MockUser with Mock implements User {}

// ignore: subtype_of_sealed_class
class MockDocumentReference with Mock implements DocumentReference<Map<String, dynamic>> {}

Future<void> main() async {
  late FirebaseAuth auth;
  late FirebaseFirestore firestore;
  late User user;
  late DocumentReference<Map<String, dynamic>> doc;
  late FirebaseAuthApi api;

  const String username = 'username';
  const String email = 'test@testing.test';
  const String password = 'ultra-secure';
  const String uid = '12345';
  const FirebaseUser firebaseUser = FirebaseUser(uid: uid, email: email, username: username);

  setUp(() {
    registerFallbackValue(EmailAuthProvider.credential(email: email, password: password));
    auth = MockFirebaseAuth();
    firestore = MockFirebaseFirestore();
    user = MockUser();
    doc = MockDocumentReference();
    api = FirebaseAuthApi(auth: auth, firestore: firestore);
  });

  test('signup', () async {
    when(() => auth.createUserWithEmailAndPassword(email: email, password: password))
        .thenAnswer((_) async => MockUserCredential());
    when(() => auth.currentUser).thenReturn(user);
    when(() => user.updateDisplayName(username)).thenAnswer((_) async => _);
    when(() => firestore.doc(captureAny())).thenReturn(doc);
    when(() => doc.set(captureAny())).thenAnswer((_) async => _);
    when(() => user.uid).thenAnswer((_) => uid);
    final FirebaseUser result = await api.signup(email: email, password: password, username: username);
    expect(result, firebaseUser);
    verify(() => auth.createUserWithEmailAndPassword(email: email, password: password)).called(1);
    verify(() => auth.currentUser).called(3);
    verify(() => user.updateDisplayName(username)).called(1);
    verify(() => firestore.doc(captureAny())).called(1);
    verify(() => doc.set(captureAny())).called(1);
    verify(() => user.uid).called(2);
  });

  group('getCurrentUser', () {
    test('user exists', () async {
      when(() => auth.currentUser).thenReturn(user);
      when(() => user.uid).thenReturn(uid);
      when(() => user.email).thenReturn(email);
      when(() => user.displayName).thenReturn(username);
      final FirebaseUser? result = await api.getCurrentUser();
      expect(result, firebaseUser);
      verify(() => auth.currentUser).called(1);
      verify(() => user.uid).called(1);
      verify(() => user.email).called(1);
      verify(() => user.displayName).called(1);
    });

    test('user does not exists', () async {
      when(() => auth.currentUser).thenReturn(null);
      final FirebaseUser? result = await api.getCurrentUser();
      expect(result, null);
    });
  });

  test('changePassword', () async {
    const String newPassword = 'new';
    when(() => auth.currentUser).thenReturn(user);
    when(() => user.reauthenticateWithCredential(captureAny())).thenAnswer((_) async => MockUserCredential());
    when(() => user.updatePassword(newPassword)).thenAnswer((_) async => _);
    await api.changePassword(currentPassword: password, newPassword: newPassword, firebaseUser: firebaseUser);
    verify(() => auth.currentUser).called(2);
    verify(() => user.reauthenticateWithCredential(captureAny())).called(1);
    verify(() => user.updatePassword(newPassword)).called(1);
  });

  test('logout', () async {
    when(auth.signOut).thenAnswer((_) async => _);
    await api.logout();
    verify(auth.signOut).called(1);
  });
}

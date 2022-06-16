import 'package:flutter_test/flutter_test.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/reducers/auth_reducer.dart';

Future<void> main() async {
  const FirebaseUser firebaseUser = FirebaseUser(uid: '0', email: 'test@testing.test', username: 'test');
  const String masterKey = 'VerySecureMasterKeyForTesting1234###';
  test('_firebaseLoginSuccessful', () {
    const AppState initial = AppState();
    final AppState result = authReducer(initial, const FirebaseLoginSuccessful(firebaseUser: firebaseUser));
    expect(result.firebaseUser, firebaseUser);
  });

  test('_firebaseSignupSuccessful', () {
    const AppState initial = AppState();
    final AppState result = authReducer(initial, const FirebaseSignUpSuccessful(firebaseUser: firebaseUser));
    expect(result.firebaseUser, firebaseUser);
  });

  test('_getCurrentFirebaseUserSuccessful', () {
    const AppState initial = AppState();
    final AppState nullResult = authReducer(initial, const GetCurrentFirebaseUserSuccessful());
    final AppState result = authReducer(initial, const GetCurrentFirebaseUserSuccessful(firebaseUser: firebaseUser));
    expect(nullResult.firebaseUser, null);
    expect(result.firebaseUser, firebaseUser);
  });

  test('_firebaseLogoutSuccessful', () {
    const AppState initial = AppState(firebaseUser: firebaseUser);
    final AppState result = authReducer(initial, const FirebaseLogoutSuccessful());
    expect(result.firebaseUser, null);
  });

  test('_unlockAppSuccessful', () {
    const AppState initial = AppState();
    final AppState result = authReducer(initial, const UnlockAppSuccessful(masterKey: masterKey));
    expect(result.masterKey, masterKey);
  });

  test('_createMasterKey', () {
    const AppState initial = AppState();
    final AppState result = authReducer(initial, const CreateMasterKeySuccessful(masterKey: masterKey));
    expect(result.masterKey, masterKey);
  });
}

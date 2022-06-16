import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/reducers/local_reducer.dart';
import 'package:walman/src/utils/otp.dart';
import 'package:walman/src/utils/password_generator.dart';

Future<void> main() async {
  const String masterKey = 'VeryStrong';
  const Bundle bundle = Bundle();

  final Password password = Password(
    id: 'id_pass',
    title: 'title',
    username: 'username',
    password: 'password',
    note: 'note',
    createdAt: DateTime(2000),
    lastAccess: DateTime(2000),
  );

  final OTPToken token = OTPToken(
    id: 'id_token',
    title: 'title',
    createdAt: DateTime(2000),
    lastAccess: DateTime(2000),
    timesAccessed: 0,
    standard: OTPStandard.totp,
    path: 'path',
    secret: 'secret',
    issuer: 'issuer',
    algorithm: OTPAlgorithm.sha1,
    period: 1,
    digits: 6,
    keyUri: Uri(),
  );

  final Code code = Code(
    id: 'id_code',
    data: 'data',
    format: BarcodeFormat.aztec,
    createdAt: DateTime(2000),
    lastAccess: DateTime(2000),
  );

  test('_createNewPassword', () {
    const AppState initial = AppState();
    final AppState result = localReducer(initial, CreateNewPassword(password, masterKey));
    expect(result.persistentState.bundle.passwords.contains(password), true);
  });

  test('_editPasswordStart', () {
    final AppState initial = AppState(
      persistentState: PersistentState(
        bundle: Bundle(
          passwords: <Password>[password],
        ),
      ),
    );
    final Password modified = password.copyWith(title: 'Something Else');
    final AppState result = localReducer(initial, EditPasswordStart(modified));
    expect(result.persistentState.bundle.passwords.contains(password), false);
    expect(result.persistentState.bundle.passwords.contains(modified), true);
  });

  test('_deletePassword', () {
    final AppState initial = AppState(
      persistentState: PersistentState(
        bundle: Bundle(
          passwords: <Password>[password],
        ),
      ),
    );
    final AppState result = localReducer(initial, DeletePassword(password.id));
    expect(result.persistentState.bundle.passwords.contains(password), false);
  });

  test('_createOTPToken', () {
    const AppState initial = AppState();
    final AppState result = localReducer(initial, CreateNewOTPTokenSuccessful(token));
    expect(result.persistentState.bundle.otpTokens.contains(token), true);
  });

  test('_deleteOTPToken', () {
    final AppState initial = AppState(
      persistentState: PersistentState(
        bundle: Bundle(
          otpTokens: <OTPToken>[token],
        ),
      ),
    );
    final AppState result = localReducer(initial, DeleteOTPToken(token));
    expect(result.persistentState.bundle.otpTokens.contains(token), false);
  });

  test('_createNewCode', () {
    const AppState initial = AppState();
    final AppState result = localReducer(initial, CreateNewCode(code, masterKey));
    expect(result.persistentState.bundle.codes.contains(code), true);
  });

  test('_deleteCode', () {
    final AppState initial = AppState(
      persistentState: PersistentState(
        bundle: Bundle(
          codes: <Code>[code],
        ),
      ),
    );
    final AppState result = localReducer(initial, DeleteCode(code.id));
    expect(result.persistentState.bundle.codes.contains(code), false);
  });

  test('_setScannedCode', () {
    const AppState initial = AppState();
    final AppState result = localReducer(initial, SetScannedCode(code));
    expect(result.createCodeState.code, code);
  });

  test('_selectItemDetailsStart', () {
    const AppState initial = AppState();
    final AppState result = localReducer(initial, SelectItemDetailsStart(code.id, (_) {}));
    expect(result.detailsState.selectedId, code.id);
  });

  test('_updateAccessTime', () {
    final AppState initial = AppState(
      persistentState: PersistentState(
        bundle: Bundle(
          passwords: <Password>[password],
          codes: <Code>[code],
          otpTokens: <OTPToken>[token],
        ),
      ),
    );
    final AppState resultCode = localReducer(initial, UpdateAccessTime(code.id));
    final AppState resultPassword = localReducer(initial, UpdateAccessTime(password.id));
    final AppState result = localReducer(initial, UpdateAccessTime(token.id));
    expect(resultCode.persistentState.bundle.codes.first.timesAccessed, 1);
    expect(resultCode.persistentState.bundle.codes.first.lastAccess != DateTime(2000), true);
    expect(resultPassword.persistentState.bundle.passwords.first.timesAccessed, 1);
    expect(resultPassword.persistentState.bundle.passwords.first.lastAccess != DateTime(2000), true);
    expect(result.persistentState.bundle.otpTokens.first, token);
  });

  test('_generatePasswordSuccessful', () {
    const AppState initial = AppState();
    final AppState result = localReducer(initial, const GeneratePasswordSuccessful(masterKey));
    expect(result.passwordGeneratorState.password, masterKey);
  });

  test('_changePasswordGeneratorCharacterPool', () {
    const AppState initial = AppState();
    expect(initial.passwordGeneratorState.characterPool, kCharacterPoolValues);
    final AppState result = localReducer(
      initial,
      const ChangePasswordGeneratorCharacterPool(
        characterPool: <CharacterPool>{CharacterPool.lowercaseLetters},
      ),
    );
    expect(result.passwordGeneratorState.characterPool, <CharacterPool>{CharacterPool.lowercaseLetters});
  });

  test('_changePasswordGeneratorLength', () {
    const AppState initial = AppState();
    final AppState result = localReducer(
      initial,
      const ChangePasswordGeneratorLength(length: 100),
    );
    expect(result.passwordGeneratorState.length, 100);
  });

  test('_setWalletPrivateKey', () {
    const AppState initial = AppState();
    final AppState result = localReducer(
      initial,
      const SetWalletPrivateKey(masterKey),
    );
    expect(result.persistentState.walletPrivateKey, masterKey);
  });

  test('_setBundle', () {
    const AppState initial = AppState();
    final AppState result = localReducer(
      initial,
      const SetBundle(bundle),
    );
    expect(result.persistentState.bundle, bundle);
  });

  test('_removeFromVault', () {
    final AppState initial = AppState(
      vault: <VaultBundle>[
        VaultBundle(
          bundle: const Bundle(),
          storedAt: DateTime(2000),
          type: BundleType.cloud,
        ),
        VaultBundle(
          bundle: const Bundle(),
          storedAt: DateTime(2000),
          type: BundleType.blockchain,
        ),
      ],
    );
    final AppState result = localReducer(initial, const RemoveFromVault(BundleType.cloud));
    final AppState finalResult = localReducer(result, const RemoveFromVault(BundleType.blockchain));
    expect(finalResult.vault, <VaultBundle>[]);
  });
}

import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:walman/src/utils/password_generator.dart';

const int _kHashRounds = 12;
const int _kSaltSize = 6;

String hashPassword({required String password, String? salt}) {
  salt ??= generatePassword(
    characterPool: <CharacterPool>{
      CharacterPool.lowercaseLetters,
      CharacterPool.uppercaseLetters,
      CharacterPool.digits,
    },
    length: _kSaltSize,
  );
  final List<int> bytes = utf8.encode(password + salt);
  Digest digest = sha512.convert(bytes);
  for (int i = 0; i < _kHashRounds - 1; i++) {
    digest = sha512.convert(digest.bytes);
  }
  return '${base64.encode(digest.bytes)}:$salt';
}

String saltFromHash(String hash) {
  return hash.split(':')[1];
}

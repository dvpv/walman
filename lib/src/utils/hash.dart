import 'dart:convert';
import 'package:crypto/crypto.dart';

const int _kHashRounds = 50;

String generateMasterKey(String password) {
  final List<int> bytes = utf8.encode(password);

  Digest digest = sha512.convert(bytes);
  for (int i = 0; i < _kHashRounds - 1; i++) {
    digest = sha512.convert(digest.bytes);
  }
  return digest.toString().substring(0, 64);
}

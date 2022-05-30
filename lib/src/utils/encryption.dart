import 'package:encrypt/encrypt.dart';

const int _kRoundsOfEncryption = 10;

String encrypt({
  required String message,
  required String key,
}) {
  String response = message;
  final String paddedKey = _padKey(key);
  for (int i = 0; i < _kRoundsOfEncryption; i++) {
    response =
        Encrypter(AES(Key.fromUtf8(paddedKey), mode: AESMode.cbc)).encrypt(response, iv: IV.fromLength(16)).base64;
  }
  return response;
}

String decrypt({
  required String message,
  required String key,
}) {
  String response = message;
  final String paddedKey = _padKey(key);
  for (int i = 0; i < _kRoundsOfEncryption; i++) {
    response = Encrypter(AES(Key.fromUtf8(paddedKey), mode: AESMode.cbc))
        .decrypt(Encrypted.fromBase64(response), iv: IV.fromLength(16));
  }
  return response;
}

String _padKey(String key) {
  if (key.length <= 32) {
    return key + 'x' * (32 - key.length);
  } else {
    throw Exception('Key is too big, max size = 32');
  }
}

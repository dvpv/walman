import 'package:encrypt/encrypt.dart';

String encrypt({
  required String message,
  required String key,
}) =>
    Encrypter(AES(Key.fromUtf8(_padKey(key)), mode: AESMode.cbc)).encrypt(message, iv: IV.fromLength(16)).base64;

String decrypt({
  required String message,
  required String key,
}) =>
    Encrypter(AES(Key.fromUtf8(_padKey(key)), mode: AESMode.cbc))
        .decrypt(Encrypted.fromBase64(message), iv: IV.fromLength(16));

String _padKey(String key) {
  if (key.length <= 32) {
    return key + 'x' * (32 - key.length);
  } else if (key.length <= 42) {
    return key + 'x' * (42 - key.length);
  } else if (key.length <= 64) {
    return key + 'x' * (64 - key.length);
  } else {
    throw Exception('Key is too big, max size = 64');
  }
}

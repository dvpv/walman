import 'dart:math';
import 'dart:typed_data';

import 'package:base32/base32.dart';
import 'package:crypto/crypto.dart';
import 'package:walman/src/models/index.dart';

enum OTPAlgorithm {
  sha1,
  sha256,
  md5,
}

class UnknownOTPAlgorithm implements Exception {}

extension OTPAlgorithmStringExtension on String {
  OTPAlgorithm get toOTPAlgorithm {
    switch (this) {
      case 'SHA1':
        return OTPAlgorithm.sha1;
      case 'SHA256':
        return OTPAlgorithm.sha256;
      case 'MD5':
        return OTPAlgorithm.md5;
      default:
        throw UnknownOTPAlgorithm();
    }
  }
}

enum OTPStandard {
  totp,
  hotp,
}

class UnknownOTPStandard implements Exception {}

extension OTPStandardStringExtension on String {
  OTPStandard get toOTPStandard {
    switch (this) {
      case 'totp':
        return OTPStandard.totp;
      default:
        throw UnknownOTPStandard();
    }
  }
}

String getToken(OTPToken otpToken) {
  switch (otpToken.standard) {
    case OTPStandard.totp:
      return _getTOTPToken(
        secret: otpToken.secret,
        period: otpToken.period,
        digits: otpToken.digits,
        algorithm: otpToken.algorithm,
        time: DateTime.now(),
      );
    case OTPStandard.hotp:
      return _getHOTPToken(
        secret: otpToken.secret,
        counter: otpToken.period,
        digits: otpToken.digits,
        algorithm: otpToken.algorithm,
      );
  }
}

String _getTOTPToken({
  required String secret,
  required int period,
  required int digits,
  required OTPAlgorithm algorithm,
  required DateTime time,
}) {
  return _getHOTPToken(
    secret: secret,
    counter: (time.millisecondsSinceEpoch / 1000 / period).floor(),
    digits: digits,
    algorithm: algorithm,
  );
}

String _getHOTPToken({
  required String secret,
  required int counter,
  required int digits,
  required OTPAlgorithm algorithm,
}) {
  final Hmac hmac = _getHMAC(algorithm, secret);
  final List<int> digest = hmac.convert(Uint8List(8)..buffer.asByteData().setInt64(0, counter)).bytes;
  final int offset = digest[digest.length - 1] & 0x0f;
  final List<int> resultBytes = digest.sublist(offset, offset + 4);
  final int result = (resultBytes[0] & 0x7f) << 24 | resultBytes[1] << 16 | resultBytes[2] << 8 | resultBytes[3];
  return (result % pow(10, digits)).toString();
}

Hmac _getHMAC(OTPAlgorithm algorithm, String key) {
  switch (algorithm) {
    case OTPAlgorithm.sha1:
      return Hmac(sha1, base32.decode(key));
    case OTPAlgorithm.sha256:
      return Hmac(sha256, base32.decode(key));
    case OTPAlgorithm.md5:
      return Hmac(md5, base32.decode(key));
  }
}

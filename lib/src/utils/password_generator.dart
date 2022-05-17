import 'dart:math';

const String _lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
const String _uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const String _numbers = '1234567890';
// TODO(dvpv): Maybe add mode symbols?
const String _symbols = '!@#\$%^&*()_+|-=\\{}[]:";\'<>,.?/~`';

enum CharacterPool {
  lowercaseLetters,
  uppercaseLetters,
  numbers,
  symbols,
}

extension _CharacterPool on CharacterPool {
  String get characters {
    switch (this) {
      case CharacterPool.lowercaseLetters:
        return _lowercaseLetters;
      case CharacterPool.uppercaseLetters:
        return _uppercaseLetters;
      case CharacterPool.numbers:
        return _numbers;
      case CharacterPool.symbols:
        return _symbols;
    }
  }
}

extension _CharacterPoolList on List<CharacterPool> {
  List<int> get codes {
    return map((CharacterPool e) => e.characters.codeUnits)
        .reduce((List<int> value, List<int> element) => value + element);
  }
}

String generatePassword({required List<CharacterPool> characterPool, required int length, String? customPool}) {
  final Random random = Random();
  final Set<int> codes = (characterPool.codes + (customPool ?? '').codeUnits).toSet();
  return String.fromCharCodes(
    List<int>.generate(
      length,
      (_) => codes.elementAt(
        random.nextInt(codes.length),
      ),
    ),
  );
}

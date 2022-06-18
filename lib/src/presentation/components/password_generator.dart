import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/containers/password_generator_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/character_pool_item.dart';
import 'package:walman/src/utils/password_generator.dart';

const int _kMaxCharacters = 64;
const int _kMinCharacters = 4;

class PasswordGeneratorDialog extends StatelessWidget {
  const PasswordGeneratorDialog({Key? key, this.withReturn = true}) : super(key: key);
  final bool withReturn;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Password Generator'),
      actions: withReturn
          ? <Widget>[
              TextButton(
                child: const Text('CANCEL'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              PasswordGeneratorContainer(
                builder: (BuildContext context, PasswordGeneratorState state) {
                  return TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.pop(context, state.password);
                    },
                  );
                },
              ),
            ]
          : <Widget>[
              TextButton(
                child: const Text('CLOSE'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
      content: const PasswordGeneratorBody(),
    );
  }
}

class PasswordGeneratorBody extends StatelessWidget {
  const PasswordGeneratorBody({Key? key}) : super(key: key);

  void _onCopy(BuildContext context, String password) {
    Clipboard.setData(ClipboardData(text: password));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Password copied to clipboard.'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PasswordGeneratorContainer(
      builder: (BuildContext context, PasswordGeneratorState state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      state.password.substring(0, state.password.length <= 16 ? state.password.length : 16) +
                          (state.password.length <= 16 ? '' : '...'),
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.copy,
                        color: Colors.black,
                      ),
                      onPressed: () => _onCopy(context, state.password),
                    ),
                    IconButton(
                      padding: const EdgeInsets.all(16),
                      icon: const Icon(
                        Icons.refresh,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(const GeneratePasswordStart());
                      },
                    )
                  ],
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('Length'),
                      Slider(
                        value: state.length.toDouble(),
                        onChanged: (double value) {
                          StoreProvider.of<AppState>(context)
                              .dispatch(ChangePasswordGeneratorLength(length: value.toInt()));
                        },
                        onChangeEnd: (_) {
                          StoreProvider.of<AppState>(context).dispatch(const GeneratePasswordStart());
                        },
                        divisions: _kMaxCharacters - _kMinCharacters,
                        min: _kMinCharacters.toDouble(),
                        max: _kMaxCharacters.toDouble(),
                        label: '${state.length}',
                      ),
                      Text('${state.length}'),
                    ],
                  ),
                ),
                const CharacterPoolItem(characterPool: CharacterPool.lowercaseLetters, label: 'Lower case latters'),
                const CharacterPoolItem(characterPool: CharacterPool.uppercaseLetters, label: 'Upper case letters'),
                const CharacterPoolItem(characterPool: CharacterPool.digits, label: 'Digits'),
                const CharacterPoolItem(characterPool: CharacterPool.symbols, label: 'Symbols'),
              ],
            ),
          ),
        );
      },
    );
  }
}

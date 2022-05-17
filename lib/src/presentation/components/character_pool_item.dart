import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/containers/password_generator_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/utils/password_generator.dart';

class CharacterPoolItem extends StatelessWidget {
  const CharacterPoolItem({Key? key, required this.characterPool, required this.label}) : super(key: key);

  final CharacterPool characterPool;
  final String label;

  @override
  Widget build(BuildContext context) {
    return PasswordGeneratorContainer(
      builder: (BuildContext context, PasswordGeneratorState state) {
        final bool disabled = state.characterPool.length == 1 && state.characterPool.contains(characterPool);
        return Row(
          children: <Widget>[
            Switch(
              value: state.characterPool.contains(characterPool),
              onChanged: disabled
                  ? null
                  : (bool? value) {
                      if (value != null) {
                        StoreProvider.of<AppState>(context)
                          ..dispatch(
                            ChangePasswordGeneratorCharacterPool(
                              characterPool: value
                                  ? <CharacterPool>{...state.characterPool, characterPool}
                                  : (state.characterPool.toSet()
                                    ..removeWhere((CharacterPool element) => element == characterPool)),
                            ),
                          )
                          ..dispatch(const GeneratePasswordStart());
                      }
                    },
            ),
            Text(label),
          ],
        );
      },
    );
  }
}

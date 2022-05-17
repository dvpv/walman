import 'package:flutter/material.dart';
import 'package:walman/src/containers/password_generator_container.dart';
import 'package:walman/src/models/index.dart';

class PasswordGeneratorDialog extends StatelessWidget {
  const PasswordGeneratorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Password Generator'),
      actions: <Widget>[
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
      ],
      content: PasswordGeneratorContainer(
        builder: (BuildContext context, PasswordGeneratorState state) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // TODO(dvpv): create the password generator dialog widget
                Text(state.password),
              ],
            ),
          );
        },
      ),
    );
  }
}

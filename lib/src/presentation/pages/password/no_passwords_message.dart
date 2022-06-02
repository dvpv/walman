import 'package:flutter/material.dart';
import 'package:walman/src/presentation/pages/password/new_password_page.dart';

class NoPasswordsMessage extends StatelessWidget {
  const NoPasswordsMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            "Don't have any passwords yet?",
            style: TextStyle(fontSize: 24),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(4),
          child: Text('Create a new password or store an existing one!'),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, NewPasswordPage.route),
            child: const Text('Create'),
          ),
        ),
      ],
    );
  }
}

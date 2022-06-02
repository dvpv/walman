import 'package:flutter/material.dart';

class NewAuthenticatorPage extends StatelessWidget {
  const NewAuthenticatorPage({Key? key}) : super(key: key);

  static const String route = '/new-authenticator';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('New authenticator'),
    );
  }
}

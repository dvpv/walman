import 'package:flutter/material.dart';
import 'package:walman/src/presentation/pages/authenticator/scan_new_authenticator.dart';

class NoAuthenticatorTokensPage extends StatelessWidget {
  const NoAuthenticatorTokensPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(4),
            child: Text(
              "Don't have any authenticator tokens yet?",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(4),
            child: Text('Scan an authenticator token now'),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, ScanNewAuthenticatorPage.route),
              child: const Text('Scan'),
            ),
          ),
        ],
      ),
    );
  }
}

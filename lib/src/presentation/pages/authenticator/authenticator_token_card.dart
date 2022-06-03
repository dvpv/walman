import 'package:flutter/material.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/utils/otp.dart';

class AuthenticatorTokenCard extends StatelessWidget {
  const AuthenticatorTokenCard({Key? key, required this.token}) : super(key: key);

  final OTPToken token;

  @override
  Widget build(BuildContext context) {
    final double count = DateTime.now().millisecondsSinceEpoch / 1000 / token.period;
    final double progressIndicatorValue = count - count.truncate();
    final int timeLeft = token.period - (progressIndicatorValue * token.period).floor();
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  token.title,
                  style: const TextStyle(fontSize: 18),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      token.path.replaceAll('/', ''),
                      style: const TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  getToken(token),
                  style: const TextStyle(fontSize: 30, letterSpacing: 5),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Text(
                      '$timeLeft',
                      style: const TextStyle(fontSize: 18),
                    ),
                    CircularProgressIndicator(
                      strokeWidth: 10,
                      value: progressIndicatorValue,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

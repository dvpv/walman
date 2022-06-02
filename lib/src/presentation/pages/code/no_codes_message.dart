import 'package:flutter/material.dart';
import 'package:walman/src/presentation/pages/code/scan_new_code_page.dart';

class NoCodesMessage extends StatelessWidget {
  const NoCodesMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            "Don't have any codes yet?",
            style: TextStyle(fontSize: 24),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(4),
          child: Text('Scan a shopping card or a QR code that you want to store!'),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, ScanNewCodePage.route),
            child: const Text('Create'),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class DangerDialog extends StatelessWidget {
  const DangerDialog({Key? key, required this.title, required this.body}) : super(key: key);

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: <Widget>[
        TextButton(
          child: const Text(
            'CANCEL',
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
        TextButton(
          child: const Text(
            'OK',
          ),
          onPressed: () => Navigator.pop(context, true),
        ),
      ],
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.red,
        ),
      ),
      content: Text(
        body,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}

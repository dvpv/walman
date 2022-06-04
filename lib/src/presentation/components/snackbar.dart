import 'package:flutter/material.dart';

class SuccessSnackbar extends SnackBar {
  SuccessSnackbar({Key? key, required String content})
      : super(
          key: key,
          content: Text(content),
        );
}

class FailureSnackbar extends SnackBar {
  FailureSnackbar({Key? key, required String content})
      : super(
          key: key,
          content: Text(
            content,
            style: const TextStyle(color: Colors.redAccent),
          ),
        );
}

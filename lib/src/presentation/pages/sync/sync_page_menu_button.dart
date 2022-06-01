import 'package:flutter/material.dart';

enum _MenuOptions {
  cloudSettings,
}

class SyncPageMenuButton extends StatelessWidget {
  const SyncPageMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_MenuOptions>(
      onSelected: (_MenuOptions result) async {
        switch (result) {
          case _MenuOptions.cloudSettings:
            break;
        }
      },
      icon: const Icon(
        Icons.more_vert,
        color: Colors.black,
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.cloudSettings,
          child: ListTile(
            title: Text('Cloud Settings'),
          ),
        ),
      ],
    );
  }
}

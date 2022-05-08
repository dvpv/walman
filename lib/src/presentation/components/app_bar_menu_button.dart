import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/models/index.dart';

enum _MenuOptions {
  logout,
}

class AppBarMenuButton extends StatelessWidget {
  const AppBarMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_MenuOptions>(
      onSelected: (_MenuOptions result) {
        switch (result) {
          case _MenuOptions.logout:
            StoreProvider.of<AppState>(context).dispatch(const LogoutStart());
            break;
        }
      },
      icon: const Icon(
        Icons.more_vert,
        color: Colors.black,
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.logout,
          child: ListTile(
            title: Text(
              'Logout',
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/password_generator.dart';

enum _MenuOptions {
  logout,
  generator,
  saveToBlockchain,
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
          case _MenuOptions.generator:
            StoreProvider.of<AppState>(context).dispatch(const GeneratePasswordStart());
            showDialog<String>(
              context: context,
              builder: (BuildContext context) {
                return const PasswordGeneratorDialog(withReturn: false);
              },
            );
            break;
          case _MenuOptions.saveToBlockchain:
            // TODO(dvpv): change bundle with the one form state
            StoreProvider.of<AppState>(context).dispatch(const BlockchainAddBundleStart(bundle: Bundle()));
            break;
        }
      },
      icon: const Icon(
        Icons.more_vert,
        color: Colors.black,
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.saveToBlockchain,
          child: ListTile(
            title: Text(
              'Save to blockchain',
            ),
          ),
        ),
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.generator,
          child: ListTile(
            title: Text(
              'Password Generator',
            ),
          ),
        ),
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

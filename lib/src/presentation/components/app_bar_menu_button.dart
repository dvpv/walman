import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/password_generator.dart';
import 'package:walman/src/presentation/pages/sync/sync_page.dart';

enum _MenuOptions {
  generator,
  sync,
}

class AppBarMenuButton extends StatelessWidget {
  const AppBarMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentStateContainer(
      builder: (BuildContext context, PersistentState persistentState) {
        return BundleContainer(
          builder: (BuildContext context, Bundle bundle) {
            return PopupMenuButton<_MenuOptions>(
              onSelected: (_MenuOptions result) {
                switch (result) {
                  case _MenuOptions.generator:
                    StoreProvider.of<AppState>(context).dispatch(const GeneratePasswordStart());
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return const PasswordGeneratorDialog(withReturn: false);
                      },
                    );
                    break;
                  case _MenuOptions.sync:
                    Navigator.pushNamed(context, SyncPage.route);
                    break;
                }
              },
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
                const PopupMenuItem<_MenuOptions>(
                  value: _MenuOptions.sync,
                  child: ListTile(
                    title: Text(
                      'Sync',
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
              ],
            );
          },
        );
      },
    );
  }
}

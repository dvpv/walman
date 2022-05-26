import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/password_generator.dart';

enum _MenuOptions {
  logout,
  generator,
  saveToBlockchain,
  loadFromBlockchain,
}

class AppBarMenuButton extends StatelessWidget {
  const AppBarMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BundleContainer(
      builder: (BuildContext context, Bundle bundle) {
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
                StoreProvider.of<AppState>(context).dispatch(
                  BlockchainAddBundleStart(
                    bundle: bundle,
                    onResult: (AppAction action) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            action is BlockchainAddBundleSuccessful
                                ? 'Data successfully saved to the blockchain'
                                : 'Data save to the blockchain failed',
                            style: action is BlockchainAddBundleSuccessful ? null : const TextStyle(color: Colors.red),
                          ),
                        ),
                      );
                    },
                  ),
                );
                break;
              case _MenuOptions.loadFromBlockchain:
                StoreProvider.of<AppState>(context).dispatch(
                  BlockchainRestoreLatestBundleStart(
                    onResult: (AppAction action) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            action is BlockchainRestoreLatestBundleSuccessful
                                ? 'Bundle restored successfully'
                                : 'Bundle restore failed',
                            style: action is BlockchainRestoreLatestBundleSuccessful
                                ? null
                                : const TextStyle(color: Colors.red),
                          ),
                        ),
                      );
                    },
                  ),
                );
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
              value: _MenuOptions.loadFromBlockchain,
              child: ListTile(
                title: Text(
                  'Load from blockchain',
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
      },
    );
  }
}

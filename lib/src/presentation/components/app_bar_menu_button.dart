import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/password_generator.dart';
import 'package:walman/src/presentation/pages/wallet/wallet_page.dart';

enum _MenuOptions {
  logout,
  generator,
  saveToBlockchain,
  loadFromBlockchain,
  wallet,
}

class AppBarMenuButton extends StatelessWidget {
  const AppBarMenuButton({Key? key}) : super(key: key);

  void _showNeedWalletDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Crypto wallet needed'),
          content: const Text('You need a crypto wallet with ETH in order to save bundles on the blockchain'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PersistentStateContainer(
      builder: (BuildContext context, PersistentState persistentState) {
        return BundleContainer(
          builder: (BuildContext context, Bundle bundle) {
            return PopupMenuButton<_MenuOptions>(
              onSelected: (_MenuOptions result) {
                switch (result) {
                  case _MenuOptions.logout:
                    showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          actions: <Widget>[
                            TextButton(
                              child: const Text('CANCEL'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButton(
                              onPressed: () {
                                StoreProvider.of<AppState>(context).dispatch(const LogoutStart());
                                Navigator.pop(context);
                              },
                              child: const Text('LOGOUT'),
                            ),
                          ],
                          title: const Text('Logout'),
                          content: const Text('Are you sure you want to logout?'),
                        );
                      },
                    );
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
                    if (persistentState.walletPrivateKey != null) {
                      StoreProvider.of<AppState>(context).dispatch(
                        BlockchainAddBundleStart(
                          walletPrivateKey: persistentState.walletPrivateKey!,
                          bundle: bundle,
                          onResult: (AppAction action) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  action is BlockchainAddBundleSuccessful
                                      ? 'Data successfully saved to the blockchain'
                                      : 'Data save to the blockchain failed',
                                  style: action is BlockchainAddBundleSuccessful
                                      ? null
                                      : const TextStyle(color: Colors.red),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    } else {
                      Navigator.pushNamed(context, WalletPage.route);
                      _showNeedWalletDialog(context);
                    }
                    break;
                  case _MenuOptions.loadFromBlockchain:
                    if (persistentState.walletPrivateKey != null) {
                      StoreProvider.of<AppState>(context).dispatch(
                        BlockchainRestoreLatestBundleStart(
                          walletPrivateKey: persistentState.walletPrivateKey!,
                          onResult: (AppAction action) {
                            if (action is BlockchainRestoreLatestBundleError) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Bundle restore failed', style: TextStyle(color: Colors.red)),
                                ),
                              );
                            } else if (action is BlockchainRestoreLatestBundleSuccessful) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Bundle restored successfully')),
                              );
                            }
                          },
                        ),
                      );
                    } else {
                      Navigator.pushNamed(context, WalletPage.route);
                      _showNeedWalletDialog(context);
                    }
                    break;
                  case _MenuOptions.wallet:
                    Navigator.pushNamed(context, WalletPage.route);
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
                  value: _MenuOptions.wallet,
                  child: ListTile(
                    title: Text(
                      'Wallet',
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
      },
    );
  }
}

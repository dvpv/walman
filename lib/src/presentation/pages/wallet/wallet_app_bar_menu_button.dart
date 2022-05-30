import 'package:flutter/material.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/wallet/connect_wallet_dialog.dart';

enum _MenuOptions {
  connect,
}

class WalletAppBarMenuButton extends StatelessWidget {
  const WalletAppBarMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentStateContainer(
      builder: (BuildContext context, PersistentState persistentState) {
        return PopupMenuButton<_MenuOptions>(
          onSelected: (_MenuOptions result) {
            switch (result) {
              case _MenuOptions.connect:
                if (persistentState.walletPrivateKey == null) {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return const ConnectWalletDialog();
                    },
                  );
                } else {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actions: <Widget>[
                          TextButton(
                            child: const Text(
                              'CANCEL',
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          TextButton(
                            child: const Text(
                              'OK',
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              showDialog<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return const ConnectWalletDialog();
                                },
                              );
                            },
                          ),
                        ],
                        title: const Text(
                          'Are you sure you want to change the wallet?',
                          style: TextStyle(fontSize: 24),
                        ),
                        content: const Text(
                          'All the bundles currently stored on the blockchain will be un-accessible form the new wallet!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      );
                    },
                  );
                }
                break;
            }
          },
          icon: const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
            PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.connect,
              child: ListTile(
                title: Text(
                  persistentState.walletPrivateKey == null ? 'Connect an existing wallet' : 'Connect another wallet',
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

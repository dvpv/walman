import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/danger_dialog.dart';
import 'package:walman/src/presentation/pages/wallet/connect_wallet_dialog.dart';

enum _MenuOptions {
  connect,
  create,
}

const String _kChangeWalletTitle = 'Are you sure you want to change the wallet?';
const String _kChangeWalletBody =
    'All the bundles currently stored on the blockchain will be un-accessible form the new wallet!'
    ' Make sure you saved your wallet someplace else, if not, any currency on this wallet will be lost!';

class WalletAppBarMenuButton extends StatefulWidget {
  const WalletAppBarMenuButton({Key? key}) : super(key: key);

  @override
  State<WalletAppBarMenuButton> createState() => _WalletAppBarMenuButtonState();
}

class _WalletAppBarMenuButtonState extends State<WalletAppBarMenuButton> {
  @override
  Widget build(BuildContext context) {
    return PersistentStateContainer(
      builder: (BuildContext context, PersistentState persistentState) {
        return PopupMenuButton<_MenuOptions>(
          onSelected: (_MenuOptions result) async {
            switch (result) {
              case _MenuOptions.create:
                if (persistentState.walletPrivateKey != null) {
                  final bool? createWallet = await showDialog<bool>(
                    context: context,
                    builder: (BuildContext context) {
                      return const DangerDialog(
                        title: _kChangeWalletTitle,
                        body: _kChangeWalletBody,
                      );
                    },
                  );
                  if (createWallet != null && createWallet) {
                    if (!mounted) {
                      return;
                    }
                    StoreProvider.of<AppState>(context).dispatch(const CreateWalletStart());
                  }
                } else {
                  StoreProvider.of<AppState>(context).dispatch(const CreateWalletStart());
                }
                break;
              case _MenuOptions.connect:
                if (persistentState.walletPrivateKey == null) {
                  await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return const ConnectWalletDialog();
                    },
                  );
                } else {
                  final bool? changeWallet = await showDialog<bool>(
                    context: context,
                    builder: (BuildContext context) {
                      return const DangerDialog(
                        title: _kChangeWalletTitle,
                        body: _kChangeWalletBody,
                      );
                    },
                  );
                  if (changeWallet != null && changeWallet) {
                    await showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return const ConnectWalletDialog();
                      },
                    );
                  }
                }
                break;
            }
          },
          icon: const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
            const PopupMenuItem<_MenuOptions>(
              value: _MenuOptions.create,
              child: ListTile(
                title: Text('Create a new wallet'),
              ),
            ),
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

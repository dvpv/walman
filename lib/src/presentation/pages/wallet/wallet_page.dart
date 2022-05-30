import 'package:flutter/material.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/wallet/connect_wallet_dialog.dart';
import 'package:walman/src/presentation/pages/wallet/wallet_app_bar_menu_button.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  static const String route = '/wallet';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Wallet',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const <Widget>[
          WalletAppBarMenuButton(),
        ],
      ),
      body: PersistentStateContainer(
        builder: (BuildContext context, PersistentState persistentState) {
          return persistentState.walletPrivateKey != null
              ? const Center(child: Text('Wallet connected'))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(
                        child: Text(
                          'No wallet connected!',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.indigo),
                        ),
                        onPressed: () {
                          showDialog<void>(
                            context: context,
                            builder: (BuildContext context) => const ConnectWalletDialog(),
                          );
                        },
                        child: const Text('Connect an existing wallet'),
                      ),
                    )
                  ],
                );
        },
      ),
    );
  }
}

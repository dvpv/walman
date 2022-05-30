import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/containers/wallet_info_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/wallet/connect_wallet_dialog.dart';
import 'package:walman/src/presentation/pages/wallet/wallet_app_bar_menu_button.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  static const String route = '/wallet';

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  void initState() {
    final String? walletPrivateKey =
        StoreProvider.of<AppState>(context, listen: false).state.persistentState.walletPrivateKey;
    if (walletPrivateKey != null) {
      StoreProvider.of<AppState>(context, listen: false)
          .dispatch(GetWalletInfoStart(walletPrivateKey: walletPrivateKey));
    }
    super.initState();
  }

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
      body: WalletInfoContainer(
        builder: (BuildContext context, WalletInfo? walletInfo) {
          if (walletInfo == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return PersistentStateContainer(
              builder: (BuildContext context, PersistentState persistentState) {
                return persistentState.walletPrivateKey != null
                    ? SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(16),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Balance:',
                                  style: TextStyle(color: Colors.black, fontSize: 30),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Center(
                                child: Text(
                                  walletInfo.balance,
                                  style: const TextStyle(color: Colors.indigo, fontSize: 42),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
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
            );
          }
        },
      ),
    );
  }
}

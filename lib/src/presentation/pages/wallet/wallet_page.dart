import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/pending_container.dart';
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
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    final String? walletPrivateKey =
        StoreProvider.of<AppState>(context, listen: false).state.persistentState.walletPrivateKey;
    if (walletPrivateKey != null) {
      StoreProvider.of<AppState>(context, listen: false)
          .dispatch(GetWalletInfoStart(walletPrivateKey: walletPrivateKey));
    }
    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      final String? walletPrivateKey =
          StoreProvider.of<AppState>(context, listen: false).state.persistentState.walletPrivateKey;
      if (walletPrivateKey != null) {
        StoreProvider.of<AppState>(context, listen: false)
            .dispatch(GetWalletInfoStart(walletPrivateKey: walletPrivateKey, pendingId: ''));
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer.isActive) {
      _timer.cancel();
    }
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
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          return WalletInfoContainer(
            builder: (BuildContext context, WalletInfo? walletInfo) {
              return PersistentStateContainer(
                builder: (BuildContext context, PersistentState persistentState) {
                  if (pending.contains(GetWalletInfo.pendingKey) || pending.contains(CreateWallet.pendingKey)) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (persistentState.walletPrivateKey == null || walletInfo == null) {
                    return Column(
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
                            onPressed: () => StoreProvider.of<AppState>(context).dispatch(const CreateWalletStart()),
                            child: const Text('Create a new wallet'),
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
                  }
                  return RefreshIndicator(
                    onRefresh: () async => StoreProvider.of<AppState>(context).dispatch(
                      GetWalletInfoStart(walletPrivateKey: persistentState.walletPrivateKey!),
                    ),
                    child: ListView(
                      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Address:',
                              style: TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  walletInfo.address,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(fontSize: 24),
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.copy),
                                onPressed: () {
                                  Clipboard.setData(ClipboardData(text: walletInfo.address));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Public Address key copied to clipboard'),
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/containers/wallet_info_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/code_card.dart';
import 'package:walman/src/presentation/components/password_list_tile.dart';
import 'package:walman/src/presentation/pages/code/no_codes_message.dart';
import 'package:walman/src/presentation/pages/password/no_passwords_message.dart';
import 'package:walman/src/presentation/pages/wallet/no_wallet_message.dart';

const double _kDividerIndent = 50;
const double _kDividerHeight = 50;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String title = 'Home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
    final String? walletPrivateKey = store.state.persistentState.walletPrivateKey;
    if (walletPrivateKey != null) {
      store.dispatch(GetWalletInfoStart(walletPrivateKey: walletPrivateKey));
    }
    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
      final String? walletPrivateKey = store.state.persistentState.walletPrivateKey;
      if (walletPrivateKey != null) {
        store.dispatch(GetWalletInfoStart(walletPrivateKey: walletPrivateKey, pendingId: ''));
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
    return PendingContainer(
      builder: (BuildContext context, Set<String> pending) {
        return pending.contains(GetBundle.pendingKey) || pending.contains(BlockchainRestoreLatestBundle.pendingKey)
            ? const Center(child: CircularProgressIndicator())
            : BundleContainer(
                builder: (BuildContext context, Bundle bundle) {
                  final List<Password> passwords = bundle.passwords.toList()
                    ..sort((Password a, Password b) => b.timesAccessed - a.timesAccessed);
                  final List<Code> codes = bundle.codes.toList()
                    ..sort((Code a, Code b) => b.timesAccessed - a.timesAccessed);
                  return ListView(
                    physics: const BouncingScrollPhysics(),
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Passwords',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Builder(
                          builder: (BuildContext context) {
                            if (bundle.passwords.isEmpty) {
                              return const NoPasswordsMessage();
                            }
                            return ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemCount: passwords.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Password password = passwords[index];
                                return PasswordListTile(password: password);
                              },
                            );
                          },
                        ),
                      ),
                      const Divider(
                        height: _kDividerHeight,
                        indent: _kDividerIndent,
                        endIndent: _kDividerIndent,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Codes',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Builder(
                          builder: (BuildContext context) {
                            if (bundle.codes.isEmpty) {
                              return const NoCodesMessage();
                            }
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              itemCount: codes.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Code code = codes[index];
                                return CodeCard(code: code);
                              },
                            );
                          },
                        ),
                      ),
                      const Divider(
                        height: _kDividerHeight,
                        indent: _kDividerIndent,
                        endIndent: _kDividerIndent,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Wallet Balance',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: WalletInfoContainer(
                          builder: (BuildContext context, WalletInfo? walletInfo) {
                            return PersistentStateContainer(
                              builder: (BuildContext context, PersistentState persistentState) {
                                if (pending.contains(GetWalletInfo.pendingKey) ||
                                    pending.contains(CreateWallet.pendingKey)) {
                                  return const Center(child: CircularProgressIndicator());
                                }
                                if (persistentState.walletPrivateKey == null || walletInfo == null) {
                                  return const NoWalletMessage();
                                }
                                return Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                    child: Text(
                                      '${walletInfo.balance} ETH',
                                      style: const TextStyle(
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      const Divider(
                        height: _kDividerHeight,
                        indent: _kDividerIndent,
                        endIndent: _kDividerIndent,
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  );
                },
              );
      },
    );
  }
}

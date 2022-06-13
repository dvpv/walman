import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/containers/user_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/danger_dialog.dart';
import 'package:walman/src/presentation/pages/cloud/change_password.dart';
import 'package:walman/src/presentation/pages/cloud/login_page.dart';
import 'package:walman/src/presentation/pages/wallet/connect_wallet_dialog.dart';
import 'package:walman/src/presentation/start_page.dart';

const String _kDeleteWalletTitle = 'Are you sure you want to delete the wallet?';
const String _kDeleteWalletBody = 'All the bundles currently stored on the blockchain will be un-accessible!'
    ' Make sure you saved your wallet someplace else, if not, any currency on this wallet will be lost!';
const String _kViewWalletPrivateKeyTitle = 'Are you sure you want to view the private key?';
const String _kViewWalletPrivateKeyBody = 'Do not share the private key with anyone!'
    ' If someone gets access to this private key, they have full control over the wallet and all the backups.';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const String route = '/settings';

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: PersistentStateContainer(
        builder: (BuildContext context, PersistentState persistentState) {
          return FirebaseUserContainer(
            builder: (BuildContext context, FirebaseUser? firebaseUser) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Blockchain',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    if (persistentState.walletPrivateKey != null)
                      ListTile(
                        style: ListTileStyle.list,
                        title: const Text('View Wallet Private Key'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () async {
                          final bool? view = await showDialog<bool>(
                            context: context,
                            builder: (BuildContext context) {
                              return const DangerDialog(
                                title: _kViewWalletPrivateKeyTitle,
                                body: _kViewWalletPrivateKeyBody,
                              );
                            },
                          );
                          if (!mounted) {
                            return;
                          }
                          if (view != null && view) {
                            final String privateKey =
                                StoreProvider.of<AppState>(context).state.persistentState.walletPrivateKey!;
                            await showDialog<void>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Wallet private key'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                                content: ExcludeFocus(
                                  child: TextFormField(
                                    readOnly: true,
                                    initialValue: privateKey,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                        icon: const Icon(
                                          Icons.copy,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {
                                          Clipboard.setData(ClipboardData(text: privateKey));
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            const SnackBar(
                                              content: Text('Private key copied to clipboard'),
                                              behavior: SnackBarBehavior.floating,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    if (persistentState.walletPrivateKey != null)
                      ListTile(
                        style: ListTileStyle.list,
                        title: const Text('Delete Wallet'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () async {
                          final bool? deleteWallet = await showDialog<bool>(
                            context: context,
                            builder: (BuildContext context) {
                              return const DangerDialog(
                                title: _kDeleteWalletTitle,
                                body: _kDeleteWalletBody,
                              );
                            },
                          );
                          if (!mounted) {
                            return;
                          }
                          if (deleteWallet != null && deleteWallet) {
                            StoreProvider.of<AppState>(context).dispatch(const SetWalletPrivateKey(null));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Wallet deleted'),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                          }
                        },
                      ),
                    if (persistentState.walletPrivateKey == null)
                      ListTile(
                        style: ListTileStyle.list,
                        title: const Text('Create a Wallet'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          StoreProvider.of<AppState>(context).dispatch(const CreateWalletStart());
                          Navigator.popUntil(context, ModalRoute.withName(StartPage.route));
                          StoreProvider.of<AppState>(context).dispatch(const ChangeAppPage(4));
                        },
                      ),
                    if (persistentState.walletPrivateKey == null)
                      ListTile(
                        style: ListTileStyle.list,
                        title: const Text('Link a Wallet'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () async {
                          await showDialog<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return const ConnectWalletDialog();
                            },
                          );
                          if (!mounted) {
                            return;
                          }
                          Navigator.popUntil(context, ModalRoute.withName(StartPage.route));
                          StoreProvider.of<AppState>(context).dispatch(const ChangeAppPage(4));
                        },
                      ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Cloud Account',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    if (firebaseUser != null)
                      ListTile(
                        style: ListTileStyle.list,
                        title: const Text('Change Password'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          Navigator.pushNamed(context, CloudChangePasswordPage.route);
                        },
                      ),
                    if (firebaseUser != null)
                      ListTile(
                        style: ListTileStyle.list,
                        title: const Text('Logout'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          showDialog<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Are you sure you want to logout?'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('CANCEL'),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                  TextButton(
                                    child: const Text('LOGOUT'),
                                    onPressed: () {
                                      StoreProvider.of<AppState>(context).dispatch(
                                        FirebaseLogoutStart(
                                          onResult: (AppAction action) => ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(content: Text('Logout successful'))),
                                        ),
                                      );
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    if (firebaseUser == null)
                      ListTile(
                        style: ListTileStyle.list,
                        title: const Text('Login'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          Navigator.pushNamed(context, LoginPage.route);
                        },
                      ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

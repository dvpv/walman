import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/containers/user_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/cloud/change_password.dart';
import 'package:walman/src/presentation/pages/cloud/login_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const String route = '/settings';

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
                        title: const Text('Change Wallet'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {},
                      ),
                    if (persistentState.walletPrivateKey == null)
                      ListTile(
                        style: ListTileStyle.list,
                        title: const Text('Create a Wallet'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {},
                      ),
                    if (persistentState.walletPrivateKey == null)
                      ListTile(
                        style: ListTileStyle.list,
                        title: const Text('Link a Wallet'),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {},
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

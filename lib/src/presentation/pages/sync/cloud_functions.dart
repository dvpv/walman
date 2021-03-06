import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/cloud/login_page.dart';

void cloudBackup({required BuildContext context, required Bundle bundle}) {
  final Store<AppState> store = StoreProvider.of<AppState>(context);
  final FirebaseUser? firebaseUser = store.state.firebaseUser;
  if (firebaseUser == null) {
    Navigator.pushNamed(context, LoginPage.route);
    _showNeedCloudAccountDialog(context);
  } else {
    store.dispatch(
      CloudAddBundle(
        firebaseUser: firebaseUser,
        bundle: bundle,
        masterKey: store.state.masterKey!,
        vault: store.state.vault,
      ),
    );
  }
}

void _showNeedCloudAccountDialog(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Cloud account needed'),
        content: const Text('You need to log in or create an account in order to backup your data on the cloud'),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      );
    },
  );
}

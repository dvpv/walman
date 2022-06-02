import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/start_page.dart';

void blockchainBackup({required BuildContext context, required String? walletPrivateKey, required Bundle bundle}) {
  if (walletPrivateKey != null) {
    StoreProvider.of<AppState>(context).dispatch(
      BlockchainAddBundleStart(
        walletPrivateKey: walletPrivateKey,
        bundle: bundle,
        onResult: (AppAction action) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                action is BlockchainAddBundleSuccessful
                    ? 'Data successfully saved to the blockchain'
                    : 'Data save failed, insufficient funds',
                style: action is BlockchainAddBundleSuccessful ? null : const TextStyle(color: Colors.redAccent),
              ),
            ),
          );
        },
      ),
    );
  } else {
    Navigator.popUntil(context, ModalRoute.withName(StartPage.route));
    StoreProvider.of<AppState>(context).dispatch(const ChangeAppPage(4));
    _showNeedWalletDialog(context);
  }
}

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

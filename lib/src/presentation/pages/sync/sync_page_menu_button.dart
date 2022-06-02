import 'package:flutter/material.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/sync/blockchain_functions.dart';

enum _MenuOptions {
  cloudSettings,
  saveToBlockchain,
}

class SyncPageMenuButton extends StatelessWidget {
  const SyncPageMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BundleContainer(
      builder: (BuildContext context, Bundle bundle) {
        return PersistentStateContainer(
          builder: (BuildContext context, PersistentState persistentState) {
            return PopupMenuButton<_MenuOptions>(
              onSelected: (_MenuOptions result) async {
                switch (result) {
                  case _MenuOptions.cloudSettings:
                    break;
                  case _MenuOptions.saveToBlockchain:
                    blockchainBackup(
                      context: context,
                      walletPrivateKey: persistentState.walletPrivateKey,
                      bundle: bundle,
                    );
                    break;
                }
              },
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
                const PopupMenuItem<_MenuOptions>(
                  value: _MenuOptions.saveToBlockchain,
                  child: ListTile(
                    title: Text(
                      'Save to blockchain',
                    ),
                  ),
                ),
                const PopupMenuItem<_MenuOptions>(
                  value: _MenuOptions.cloudSettings,
                  child: ListTile(
                    title: Text('Cloud Settings'),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

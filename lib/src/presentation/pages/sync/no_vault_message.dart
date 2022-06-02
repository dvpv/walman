import 'package:flutter/material.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/sync/blockchain_functions.dart';
import 'package:walman/src/presentation/pages/sync/cloud_functions.dart';

class NoVaultMessage extends StatelessWidget {
  const NoVaultMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            "Don't have any backups yet?",
            style: TextStyle(fontSize: 24),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(4),
          child: Text(
            'Create a blockchain backup or a cloud backup',
            style: TextStyle(fontSize: 18),
          ),
        ),
        BundleContainer(
          builder: (BuildContext context, Bundle bundle) {
            return Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('Cloud backup'),
                    onPressed: () => cloudBackup(context: context, bundle: bundle),
                  ),
                  PersistentStateContainer(
                    builder: (BuildContext context, PersistentState persistentState) {
                      return ElevatedButton(
                        child: const Text('Blockchain backup'),
                        onPressed: () => blockchainBackup(
                          context: context,
                          walletPrivateKey: persistentState.walletPrivateKey,
                          bundle: bundle,
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}

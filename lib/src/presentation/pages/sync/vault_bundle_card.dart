import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/start_page.dart';

class VaultBundleCard extends StatelessWidget {
  const VaultBundleCard({Key? key, required this.vaultBundle}) : super(key: key);

  final VaultBundle vaultBundle;

  void _delete(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    switch (vaultBundle.type) {
      case BundleType.blockchain:
        store.dispatch(
          BlockchainRemoveBundleStart(
            masterKey: store.state.masterKey!,
            walletPrivateKey: store.state.persistentState.walletPrivateKey!,
            bundle: vaultBundle,
          ),
        );
        break;
      case BundleType.cloud:
        store.dispatch(
          CloudDeleteItemFromVaultStart(
            masterKey: store.state.masterKey!,
            vault: store.state.vault,
            firebaseUser: store.state.firebaseUser!,
            bundle: vaultBundle,
          ),
        );
        break;
    }
  }

  String _formattedTime(int n) {
    return n < 10 ? '0$n' : '$n';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.2,
          motion: const DrawerMotion(),
          children: <Widget>[
            SlidableAction(
              onPressed: _delete,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: ListTile(
          onLongPress: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: Colors.black54,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.delete),
                          title: const Text('Delete'),
                          onTap: () {
                            Navigator.pop(context);
                            _delete(context);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          title: Text('${vaultBundle.bundle.itemCount} ${vaultBundle.bundle.itemCount < 2 ? 'item' : 'items'}'),
          subtitle: Text(
            '${_formattedTime(vaultBundle.storedAt.hour)}'
            ':${_formattedTime(vaultBundle.storedAt.minute)}'
            ':${_formattedTime(vaultBundle.storedAt.second)} - '
            '${_formattedTime(vaultBundle.storedAt.day)}'
            '/${_formattedTime(vaultBundle.storedAt.month)}'
            '/${vaultBundle.storedAt.year}',
          ),
          leading: Icon(
            vaultBundle.type == BundleType.blockchain ? Icons.all_inclusive : Icons.cloud,
            size: 30,
            color: Colors.black54,
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.sync,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    actions: <Widget>[
                      TextButton(
                        child: const Text('CANCEL'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(SetBundle(vaultBundle.bundle));
                          Navigator.popUntil(context, ModalRoute.withName(StartPage.route));
                        },
                      )
                    ],
                    title: const Text('Are you sure you want to recover the bundle?'),
                    content: const Text('The current bundle will be overridden!'),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

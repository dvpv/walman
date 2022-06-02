import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/start_page.dart';

class VaultBundleCard extends StatelessWidget {
  const VaultBundleCard({Key? key, required this.vaultBundle}) : super(key: key);

  final VaultBundle vaultBundle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.2,
          motion: const DrawerMotion(),
          children: <Widget>[
            SlidableAction(
              onPressed: (BuildContext context) {},
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: ListTile(
          title: Text('${vaultBundle.bundle.itemCount} ${vaultBundle.bundle.itemCount < 2 ? 'item' : 'items'}'),
          subtitle: Text(
            '${vaultBundle.storedAt.hour}:${vaultBundle.storedAt.minute}:${vaultBundle.storedAt.second} - '
            '${vaultBundle.storedAt.day}/${vaultBundle.storedAt.month}/${vaultBundle.storedAt.year}',
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

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:walman/src/models/index.dart';

class VaultBundleCard extends StatelessWidget {
  const VaultBundleCard({Key? key, required this.bundle}) : super(key: key);

  final VaultBundle bundle;

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
          title: Text('${bundle.bundle.itemCount} ${bundle.bundle.itemCount < 2 ? 'item' : 'items'}'),
          subtitle: Text(
            '${bundle.storedAt.hour}:${bundle.storedAt.minute}:${bundle.storedAt.second} - '
            '${bundle.storedAt.day}/${bundle.storedAt.month}/${bundle.storedAt.year}',
          ),
          leading: Icon(
            bundle.type == BundleType.blockchain ? Icons.all_inclusive : Icons.cloud,
            size: 30,
            color: Colors.black54,
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.sync,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

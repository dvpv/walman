import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/code/code_details.dart';
import 'package:walman/src/utils/code.dart';

class CodeListTile extends StatelessWidget {
  const CodeListTile({Key? key, required this.code}) : super(key: key);

  final Code code;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.2,
          motion: const DrawerMotion(),
          children: <Widget>[
            SlidableAction(
              onPressed: (BuildContext context) {
                StoreProvider.of<AppState>(context).dispatch(DeleteCode(code.id));
              },
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: ListTile(
          title: Text(code.title),
          trailing: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BarcodeWidget(
              drawText: false,
              width: 50,
              data: code.data,
              barcode: barcodeFromScannerBarcodeFormat(code.format),
            ),
          ),
          onTap: () {
            StoreProvider.of<AppState>(context).dispatch(
              SelectItemDetails(code.id, (_) => Navigator.pushNamed(context, CodeDetails.route)),
            );
          },
        ),
      ),
    );
  }
}

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/code/code_details.dart';
import 'package:walman/src/utils/code.dart';

class CodesPage extends StatelessWidget {
  const CodesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BundleContainer(
        builder: (BuildContext context, Bundle bundle) {
          final List<Code> codes = bundle.codes;
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: codes.length,
            itemBuilder: (BuildContext context, int index) {
              final Code code = codes[index];
              return Slidable(
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
                  trailing: BarcodeWidget(
                    drawText: false,
                    width: 50,
                    data: code.data,
                    barcode: barcodeFromScannerBarcodeFormat(code.format),
                  ),
                  onTap: () {
                    StoreProvider.of<AppState>(context).dispatch(SelectItemDetails(code.id));
                    Navigator.pushNamed(context, CodeDetails.route);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

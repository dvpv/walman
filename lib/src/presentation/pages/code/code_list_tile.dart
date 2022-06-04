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

  void _onDetails(BuildContext context, Code code) {
    StoreProvider.of<AppState>(context).dispatch(UpdateAccessTime(code.id));
    StoreProvider.of<AppState>(context).dispatch(
      SelectItemDetailsStart(
        code.id,
        (_) => Navigator.pushNamed(context, CodeDetails.route),
      ),
    );
  }

  void _onDelete(BuildContext context, Code code) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Delete this item?'),
        content: Text('Are you sure you want to delete ${code.title}?'),
        actions: <Widget>[
          TextButton(
            child: const Text('CANCEL'),
            onPressed: () => Navigator.pop(context),
          ),
          TextButton(
            child: const Text('DELETE'),
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(DeleteCode(code.id));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Code deleted'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
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
              onPressed: (BuildContext context) => _onDelete(context, code),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
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
            onTap: () => _onDetails(context, code),
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
                            leading: const Icon(Icons.remove_red_eye),
                            title: const Text('View'),
                            onTap: () {
                              Navigator.pop(context);
                              _onDetails(context, code);
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.delete),
                            title: const Text('Delete'),
                            onTap: () {
                              Navigator.pop(context);
                              _onDelete(context, code);
                            },
                          ),
                        ],
                      ),
                    ),
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

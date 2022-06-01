import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/editing_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/button_styles.dart';
import 'package:walman/src/utils/code.dart';

class CodeDetails extends StatelessWidget {
  const CodeDetails({Key? key}) : super(key: key);

  static const String route = '/code-details';

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
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BundleContainer(
      builder: (BuildContext context, Bundle bundle) {
        return DetailsContainer(
          builder: (BuildContext context, DetailsState state) {
            if (bundle.codes.any((Code code) => code.id == state.selectedId)) {
              final Code code = bundle.codes.firstWhere((Code code) => code.id == state.selectedId);
              return Scaffold(
                appBar: AppBar(
                  bottomOpacity: 0,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  title: Text(
                    code.title,
                    style: const TextStyle(color: Colors.black),
                  ),
                  leading: TextButton(
                    style: appBarButtonStyle(),
                    child: const Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  actions: <Widget>[
                    TextButton(
                      style: appBarButtonStyle(),
                      child: const Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      onPressed: () => _onDelete(context, code),
                    ),
                  ],
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      BarcodeWidget(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.8,
                        data: code.data,
                        barcode: barcodeFromScannerBarcodeFormat(code.format),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        );
      },
    );
  }
}

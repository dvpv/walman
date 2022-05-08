import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/editing_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/styles/button_styles.dart';
import 'package:walman/src/utils/code.dart';

class CodeDetails extends StatelessWidget {
  const CodeDetails({Key? key}) : super(key: key);

  static const String route = '/code-details';

  @override
  Widget build(BuildContext context) {
    return BundleContainer(
      builder: (BuildContext context, Bundle bundle) {
        return DetailsContainer(
          builder: (BuildContext context, DetailsState state) {
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
          },
        );
      },
    );
  }
}

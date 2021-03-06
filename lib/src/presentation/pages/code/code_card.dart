import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/code/code_details.dart';
import 'package:walman/src/utils/code.dart';

class CodeCard extends StatelessWidget {
  const CodeCard({Key? key, required this.code}) : super(key: key);

  final Code code;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        child: GestureDetector(
          onTap: () {
            StoreProvider.of<AppState>(context).dispatch(UpdateAccessTime(code.id));
            StoreProvider.of<AppState>(context).dispatch(
              SelectItemDetails(
                code.id,
                (_) => Navigator.pushNamed(context, CodeDetails.route),
              ),
            );
          },
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: BarcodeWidget(
                      drawText: false,
                      data: code.data,
                      barcode: barcodeFromScannerBarcodeFormat(code.format),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: SizedBox(
                    height: 50,
                    child: Text(
                      code.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

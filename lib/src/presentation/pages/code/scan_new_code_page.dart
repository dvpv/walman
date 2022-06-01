import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:uuid/uuid.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/button_styles.dart';
import 'package:walman/src/presentation/pages/code/new_code_page.dart';

class ScanNewCodePage extends StatelessWidget {
  const ScanNewCodePage({Key? key}) : super(key: key);

  static const String route = '/scan-new-code';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.black,
        leading: TextButton(
          style: appBarButtonStyle(),
          child: const Text(
            'Back',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: <Widget>[
          MobileScanner(
            controller: MobileScannerController(
              torchEnabled: true,
            ),
            onDetect: (Barcode barcode, MobileScannerArguments? args) {
              StoreProvider.of<AppState>(context).dispatch(
                SetScannedCode(
                  Code(
                    data: barcode.rawValue!,
                    format: barcode.format,
                    createdAt: DateTime.now(),
                    lastAccess: DateTime.now(),
                    id: const Uuid().v4(),
                  ),
                ),
              );
              Navigator.popAndPushNamed(context, NewCodePage.route);
            },
          ),
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.srcOut),
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    backgroundBlendMode: BlendMode.dstOut,
                  ),
                ),
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.8,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

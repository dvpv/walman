import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/button_styles.dart';
import 'package:walman/src/presentation/components/snackbar.dart';
import 'package:walman/src/presentation/start_page.dart';

class ScanNewAuthenticatorPage extends StatelessWidget {
  const ScanNewAuthenticatorPage({Key? key}) : super(key: key);

  static const String route = '/scan-new-authenticator-code';

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
              torchEnabled: false,
            ),
            onDetect: (Barcode barcode, MobileScannerArguments? args) {
              StoreProvider.of<AppState>(context).dispatch(
                CreateNewOTPTokenStart(
                  barcode.rawValue!,
                  (AppAction action) {
                    if (action is ErrorAction) {
                      ScaffoldMessenger.of(context).showSnackBar(FailureSnackbar(content: 'Invalid Token'));
                    }
                    if (action is CreateNewOTPTokenSuccessful) {
                      ScaffoldMessenger.of(context).showSnackBar(SuccessSnackbar(content: 'Token Created'));
                    }
                  },
                ),
              );
              Navigator.popUntil(context, ModalRoute.withName(StartPage.route));
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

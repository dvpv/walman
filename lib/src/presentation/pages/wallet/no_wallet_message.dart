import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/wallet/connect_wallet_dialog.dart';

class NoWalletMessage extends StatelessWidget {
  const NoWalletMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 24),
          child: Center(
            child: Text(
              "Don't have a wallet yet?",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 24),
          child: Center(
            child: Text(
              "Create a new wallet or connect an existing one by entering it's private key:",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo),
                ),
                onPressed: () => StoreProvider.of<AppState>(context).dispatch(const CreateWalletStart()),
                child: const Text('Create'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo),
                ),
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) => const ConnectWalletDialog(),
                  );
                },
                child: const Text('Connect'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

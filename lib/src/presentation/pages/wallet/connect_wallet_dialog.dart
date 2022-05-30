import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/containers/persistent_state.dart';
import 'package:walman/src/models/index.dart';

class ConnectWalletDialog extends StatefulWidget {
  const ConnectWalletDialog({Key? key}) : super(key: key);

  @override
  State<ConnectWalletDialog> createState() => _ConnectWalletDialogState();
}

class _ConnectWalletDialogState extends State<ConnectWalletDialog> {
  final TextEditingController _privateKey = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _onSubmit(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    } else {
      StoreProvider.of<AppState>(context).dispatch(SetWalletPrivateKey(_privateKey.text));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Connect Wallet'),
      actions: <Widget>[
        TextButton(
          child: const Text('CANCEL'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () => _onSubmit(context),
        )
      ],
      content: Form(
        key: _formKey,
        child: PersistentStateContainer(
          builder: (BuildContext context, PersistentState persistentState) {
            return TextFormField(
              controller: _privateKey,
              autofocus: true,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                labelText: 'Private Key',
              ),
              validator: (String? value) {
                final RegExp privateKeyRegex = RegExp(r'^(0[xX])?[a-fA-F\d]{64}$');
                if (value == null || value.isEmpty) {
                  return 'Please enter the wallet private key';
                } else if (!privateKeyRegex.hasMatch(value)) {
                  return 'Invalid private key';
                }
                return null;
              },
              onFieldSubmitted: (_) => _onSubmit(context),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/ui_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/show_password_button.dart';
import 'package:walman/src/utils/password_generator.dart';

const int _kRequiredPasswordLength = 8;

extension _StringExtension on String {
  bool hasCharacter(CharacterPool characterPool) {
    final RegExp regex = RegExp('[${characterPool.characters}]');
    return regex.hasMatch(this);
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final TextEditingController _masterKey = TextEditingController();
  final TextEditingController _confirmMasterKey = TextEditingController();

  final FocusNode _confirmMasterKeyNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(const ShowPassword(show: false));
  }

  void _onSubmit(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    StoreProvider.of<AppState>(context).dispatch(CreateMasterKeyStart(masterKey: _masterKey.text));
  }

  String? _validate(String? password) {
    if (password == null || password.isEmpty) {
      return 'You need to enter a password';
    }
    if (password.length < _kRequiredPasswordLength) {
      return 'Password is too short';
    }
    if (!password.hasCharacter(CharacterPool.lowercaseLetters)) {
      return 'Password needs to have at least a lowercase letter';
    }
    if (!password.hasCharacter(CharacterPool.uppercaseLetters)) {
      return 'Password needs to have at least a uppercase letter';
    }
    if (!password.hasCharacter(CharacterPool.digits)) {
      return 'Password needs to have at least a digit';
    }
    if (!RegExp(r'[!@#$%^&*\-_+=?]').hasMatch(password)) {
      return 'Password needs to have at least one symbol';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UIContainer(
        builder: (BuildContext context, UIState uiState) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Center(
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'You need to create a master key',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: TextFormField(
                        controller: _masterKey,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        obscureText: !uiState.showPassword,
                        decoration: const InputDecoration(
                          labelText: 'Master Key',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: ShowPasswordButton(),
                        ),
                        validator: _validate,
                        onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_confirmMasterKeyNode),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: TextFormField(
                        controller: _confirmMasterKey,
                        focusNode: _confirmMasterKeyNode,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Confirm Master Key',
                          prefixIcon: Icon(Icons.lock),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'You need to confirm the password';
                          }
                          if (value != _masterKey.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                        onFieldSubmitted: (_) => _onSubmit(context),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: ElevatedButton(
                        child: const Text('Create Master Key'),
                        onPressed: () => _onSubmit(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

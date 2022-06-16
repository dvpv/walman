import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/ui_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/show_password_button.dart';
import 'package:walman/src/utils/hash.dart';

class WelcomeBackPage extends StatefulWidget {
  const WelcomeBackPage({Key? key}) : super(key: key);

  @override
  State<WelcomeBackPage> createState() => _WelcomeBackPageState();
}

class _WelcomeBackPageState extends State<WelcomeBackPage> {
  final TextEditingController _masterKey = TextEditingController();
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
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final String masterKeyHash = store.state.persistentState.masterKeyHash!;
    store.dispatch(UnlockAppStart(masterKey: _masterKey.text, masterKeyHash: masterKeyHash));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: UIContainer(
              builder: (BuildContext context, UIState uiState) {
                return Center(
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Center(
                            child: Text(
                              'Welcome Back',
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: TextFormField(
                            controller: _masterKey,
                            keyboardType: TextInputType.visiblePassword,
                            textInputAction: TextInputAction.done,
                            obscureText: !uiState.showPassword,
                            decoration: const InputDecoration(
                              labelText: 'Master Key',
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: ShowPasswordButton(),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the master password';
                              }
                              final String masterKeyHash =
                                  StoreProvider.of<AppState>(context).state.persistentState.masterKeyHash!;
                              if (masterKeyHash != hashPassword(password: value, salt: saltFromHash(masterKeyHash))) {
                                return 'Invalid password';
                              }
                              return null;
                            },
                            onFieldSubmitted: (_) => _onSubmit(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: ElevatedButton(
                            child: const Text('Unlock'),
                            onPressed: () => _onSubmit(context),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

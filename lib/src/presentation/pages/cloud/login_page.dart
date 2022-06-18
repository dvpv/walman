import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/containers/ui_container.dart';
import 'package:walman/src/containers/user_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/cloud/signup_page.dart';
import 'package:walman/src/presentation/pages/sync/sync_page.dart';
import 'package:walman/src/presentation/start_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String route = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final FocusNode _passwordNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    StoreProvider.of<AppState>(context, listen: false).dispatch(const ShowPassword(show: false));
    super.initState();
  }

  void _onLoginResult(AppAction action) {
    if (action is ErrorAction) {
      final Object error = action.error;
      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? '')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$error')));
      }
    } else {
      Navigator.popUntil(
        context,
        (Route<void> route) => route.settings.name == StartPage.route || route.settings.name == SyncPage.route,
      );
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login successful')));
    }
  }

  void _onLogin(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    StoreProvider.of<AppState>(context)
        .dispatch(FirebaseLoginStart(email: _email.text, password: _password.text, onResult: _onLoginResult));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: FirebaseUserContainer(
        builder: (BuildContext context, FirebaseUser? firebaseUser) {
          return UIContainer(
            builder: (BuildContext context, UIState uiState) {
              return PendingContainer(
                builder: (BuildContext context, Set<String> pending) {
                  if (pending.contains(FirebaseLogin.pendingKey) || firebaseUser != null) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return Form(
                    key: _formKey,
                    child: PendingContainer(
                      builder: (BuildContext context, Set<String> pending) {
                        return SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.all(24),
                            child: Center(
                              child: ListView(
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                children: <Widget>[
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    controller: _email,
                                    autofocus: true,
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                    decoration: const InputDecoration(
                                      labelText: 'Email',
                                    ),
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email';
                                      } else if (!EmailValidator.validate(value)) {
                                        return 'Please enter a valid email';
                                      }
                                      return null;
                                    },
                                    onFieldSubmitted: (_) {
                                      FocusScope.of(context).requestFocus(_passwordNode);
                                    },
                                  ),
                                  const SizedBox(height: 8),
                                  TextFormField(
                                    controller: _password,
                                    focusNode: _passwordNode,
                                    keyboardType: TextInputType.visiblePassword,
                                    textInputAction: TextInputAction.done,
                                    obscureText: !uiState.showPassword,
                                    decoration: InputDecoration(
                                      labelText: 'Password',
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          uiState.showPassword ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
                                        ),
                                        onPressed: () => StoreProvider.of<AppState>(context).dispatch(
                                          ShowPassword(show: !uiState.showPassword),
                                        ),
                                      ),
                                    ),
                                    validator: (String? value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                    onFieldSubmitted: (_) => _onLogin(context),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  TextButton(
                                    onPressed: () => _onLogin(context),
                                    child: const Text('Login'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, SignupPage.route);
                                    },
                                    child: const Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

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
import 'package:walman/src/presentation/pages/sync/sync_page.dart';
import 'package:walman/src/presentation/start_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  static const String route = '/signup';

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirm = TextEditingController();

  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _confirmNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(const ShowPassword(show: false));
  }

  void _onLoginResult(AppAction action) {
    if (action is ErrorAction) {
      final Object error = action.error;
      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? '')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$error')));
      }
    } else if (action is FirebaseSignUpSuccessful) {
      Navigator.popUntil(
        context,
        (Route<void> route) => route.settings.name == StartPage.route || route.settings.name == SyncPage.route,
      );
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Successfully created a new account')));
    }
  }

  void _onSignup(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    } else {
      StoreProvider.of<AppState>(context).dispatch(
        FirebaseSignUpStart(
          email: _email.text,
          password: _password.text,
          username: _username.text,
          onResult: _onLoginResult,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Form(
        key: _formKey,
        child: FirebaseUserContainer(
          builder: (BuildContext context, FirebaseUser? firebaseUser) {
            return UIContainer(
              builder: (BuildContext context, UIState uiState) {
                return PendingContainer(
                  builder: (BuildContext context, Set<String> pending) {
                    if (pending.contains(FirebaseSignUp.pendingKey) || firebaseUser != null) {
                      return const Center(child: CircularProgressIndicator());
                    }
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
                                controller: _username,
                                autofocus: true,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(labelText: 'Username'),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your username';
                                  }
                                  return null;
                                },
                                onFieldSubmitted: (_) {
                                  FocusScope.of(context).requestFocus(_emailNode);
                                },
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                controller: _email,
                                focusNode: _emailNode,
                                autofocus: true,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(labelText: 'Email'),
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
                                textInputAction: TextInputAction.next,
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
                                onFieldSubmitted: (_) {
                                  FocusScope.of(context).requestFocus(_confirmNode);
                                },
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                controller: _confirm,
                                focusNode: _confirmNode,
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.done,
                                obscureText: true,
                                decoration: const InputDecoration(labelText: 'Confirm Password'),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please confirm your password';
                                  } else if (value != _password.text) {
                                    return 'Passwords do not match';
                                  }
                                  return null;
                                },
                                onFieldSubmitted: (_) => _onSignup(context),
                              ),
                              const SizedBox(height: 24),
                              TextButton(
                                onPressed: () => _onSignup(context),
                                child: const Text('Sign Up'),
                              ),
                              TextButton(
                                onPressed: () {
                                  StoreProvider.of<AppState>(context).dispatch(const ShowPassword(show: false));
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'Login',
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
                );
              },
            );
          },
        ),
      ),
    );
  }
}

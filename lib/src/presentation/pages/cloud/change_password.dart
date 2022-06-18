import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/actions/app_action.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/containers/ui_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/show_password_button.dart';
import 'package:walman/src/presentation/pages/settings/settings_page.dart';

const int _kRequiredPasswordLength = 6;

class CloudChangePasswordPage extends StatefulWidget {
  const CloudChangePasswordPage({Key? key}) : super(key: key);

  static const String route = '/cloud-change-password';

  @override
  State<CloudChangePasswordPage> createState() => _CloudChangePasswordPageState();
}

class _CloudChangePasswordPageState extends State<CloudChangePasswordPage> {
  final TextEditingController _currentPassword = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  final FocusNode _newPasswordNode = FocusNode();
  final FocusNode _confirmPasswordNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(const ShowPassword(show: false));
  }

  void _onResult(AppAction action) {
    if (action is ErrorAction) {
      final Object error = action.error;
      if (error is FirebaseAuthException) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error.message ?? '')));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$error')));
      }
    } else {
      Navigator.popUntil(context, ModalRoute.withName(SettingsPage.route));
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Password updated')));
    }
  }

  void _onSubmit(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    store.dispatch(
      FirebaseChangePasswordStart(
        currentPassword: _currentPassword.text,
        newPassword: _newPassword.text,
        firebaseUser: store.state.firebaseUser!,
        onResult: _onResult,
      ),
    );
  }

  String? _validate(String? password) {
    if (password == null || password.isEmpty) {
      return 'You need to enter a new password';
    }
    if (password.length < _kRequiredPasswordLength) {
      return 'Password is too short';
    }
    if (password == _currentPassword.text) {
      return 'The new password has to be different from the old one';
    }
    // TODO(dvpv): add additional requirements for password validation based on the password generator module
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change you password'),
      ),
      body: UIContainer(
        builder: (BuildContext context, UIState uiState) {
          return PendingContainer(
            builder: (BuildContext context, Set<String> pending) {
              if (pending.contains(FirebaseChangePassword.pendingKey)) {
                return const Center(child: CircularProgressIndicator());
              }
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Center(
                    child: Form(
                      key: _formKey,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        children: <Widget>[
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: TextFormField(
                              controller: _currentPassword,
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.next,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Current Password',
                                prefixIcon: Icon(Icons.lock),
                              ),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the current password.';
                                }
                                return null;
                              },
                              onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_newPasswordNode),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: TextFormField(
                              controller: _newPassword,
                              focusNode: _newPasswordNode,
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.next,
                              obscureText: !uiState.showPassword,
                              decoration: const InputDecoration(
                                labelText: 'New Password',
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: ShowPasswordButton(),
                              ),
                              validator: _validate,
                              onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_confirmPasswordNode),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: TextFormField(
                              controller: _confirmPassword,
                              focusNode: _confirmPasswordNode,
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Confirm New Password',
                                prefixIcon: Icon(Icons.lock),
                              ),
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm the new password';
                                }
                                if (value != _newPassword.text) {
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
                              child: const Text('Change the password'),
                              onPressed: () => _onSubmit(context),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

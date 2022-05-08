import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/containers/user_container.dart';
import 'package:walman/src/models/index.dart';

class UnlockPage extends StatefulWidget {
  const UnlockPage({Key? key}) : super(key: key);

  @override
  State<UnlockPage> createState() => _UnlockPageState();
}

class _UnlockPageState extends State<UnlockPage> {
  final TextEditingController _password = TextEditingController();

  void _onUnlock(BuildContext context) {
    if (!Form.of(context)!.validate()) {
      return;
    } else {
      StoreProvider.of<AppState>(context).dispatch(UnlockAppStart(password: _password.text));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          return pending.contains(UnlockApp.pendingKey)
              ? const Center(child: CircularProgressIndicator())
              : UserContainer(
                  builder: (BuildContext context, AppUser? user) {
                    return Form(
                      child: Builder(
                        builder: (BuildContext context) {
                          return SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.all(24),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    TextFormField(
                                      initialValue: user!.email,
                                      enabled: false,
                                      decoration: const InputDecoration(
                                        labelText: 'Email',
                                      ),
                                    ),
                                    TextFormField(
                                      controller: _password,
                                      keyboardType: TextInputType.visiblePassword,
                                      textInputAction: TextInputAction.done,
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        labelText: 'Password',
                                      ),
                                      validator: (String? value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your password';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) => _onUnlock(context),
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    TextButton(
                                      onPressed: () => _onUnlock(context),
                                      child: const Text('Unlock'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        StoreProvider.of<AppState>(context).dispatch(const LogoutStart());
                                      },
                                      child: const Text(
                                        'Change Account',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
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
                  },
                );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uuid/uuid.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/ui_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/password_generator.dart';
import 'package:walman/src/presentation/styles/button_styles.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  static const String route = '/new-password';

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _note = TextEditingController();

  final FocusNode _usernameNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _noteNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    StoreProvider.of<AppState>(context, listen: false).dispatch(const ShowPassword(show: false));
    super.initState();
  }

  void _onSubmit(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    } else {
      StoreProvider.of<AppState>(context).dispatch(
        CreateNewPassword(
          Password(
            id: const Uuid().v4(),
            title: _title.text,
            username: _username.text,
            password: _password.text,
            note: _note.text,
            lastAccess: DateTime.now(),
            createdAt: DateTime.now(),
          ),
          StoreProvider.of<AppState>(context).state.user!.masterKey!,
        ),
      );
      Navigator.pop(context);
    }
  }

  Future<void> _onGenerate(BuildContext context) async {
    final String? password = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return const PasswordGeneratorDialog();
      },
    );
    if (password != null && password.isNotEmpty) {
      _password.text = password;
    }
  }

  @override
  Widget build(BuildContext context) {
    return UIContainer(
      builder: (BuildContext context, UIState uiState) {
        return Scaffold(
          appBar: AppBar(
            bottomOpacity: 0,
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: TextButton(
              style: appBarButtonStyle(),
              child: const Text(
                'Back',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            centerTitle: true,
            title: const Text(
              'Add a new password',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            actions: <Widget>[
              TextButton(
                style: appBarButtonStyle(),
                child: const Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.indigo,
                  ),
                ),
                onPressed: () => _onSubmit(context),
              ),
            ],
          ),
          body: Form(
            key: _formKey,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(24),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextFormField(
                    controller: _title,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    maxLength: 20,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_usernameNode);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextFormField(
                    controller: _username,
                    focusNode: _usernameNode,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      labelText: 'Username / Email Address',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a username or an email address';
                      }
                      return null;
                    },
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_passwordNode);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextFormField(
                    controller: _password,
                    focusNode: _passwordNode,
                    obscureText: !uiState.showPassword,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    enableSuggestions: false,
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
                        return 'Please enter a password';
                      }
                      return null;
                    },
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_noteNode);
                    },
                  ),
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextButton(
                      child: const Text(
                        'Generate password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () => _onGenerate(context),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: TextFormField(
                    controller: _note,
                    focusNode: _noteNode,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,
                    maxLength: 120,
                    enableSuggestions: false,
                    decoration: const InputDecoration(
                      labelText: 'Note',
                    ),
                    onFieldSubmitted: (_) => _onSubmit(context),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

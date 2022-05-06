import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uuid/uuid.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/models/index.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

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
        ),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
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
        actions: <IconButton>[
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () => _onSubmit(context),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
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
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                enableSuggestions: false,
                decoration: const InputDecoration(
                  labelText: 'Password',
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TextFormField(
                controller: _note,
                focusNode: _noteNode,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
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
  }
}

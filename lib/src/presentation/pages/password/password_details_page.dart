import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/editing_container.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/styles/button_styles.dart';

class PasswordDetailsPage extends StatefulWidget {
  const PasswordDetailsPage({Key? key}) : super(key: key);

  static const String route = '/password-details';

  @override
  State<PasswordDetailsPage> createState() => _PasswordDetailsPageState();
}

class _PasswordDetailsPageState extends State<PasswordDetailsPage> {
  late final Password _password;
  late final TextEditingController _titleController;
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  late final TextEditingController _noteController;

  final FocusNode _usernameNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final FocusNode _noteNode = FocusNode();

  @override
  void initState() {
    final AppState state = StoreProvider.of<AppState>(context, listen: false).state;
    _password = state.bundle.passwords.firstWhere((Password password) => password.id == state.detailsState.selectedId);
    _titleController = TextEditingController(text: _password.title);
    _usernameController = TextEditingController(text: _password.username);
    _passwordController = TextEditingController(text: _password.password);
    _noteController = TextEditingController(text: _password.note);
    StoreProvider.of<AppState>(context, listen: false).dispatch(const SetEditingStart(editing: false));
    super.initState();
  }

  void _onSubmit(BuildContext context, Password password) {
    if (kDebugMode) {
      print('Edit submitted');
    }
    StoreProvider.of<AppState>(context).dispatch(
      EditPasswordStart(
        Password(
          id: password.id,
          title: _titleController.text,
          username: _usernameController.text,
          password: _passwordController.text,
          note: _noteController.text,
          lastAccess: DateTime.now(),
          createdAt: password.createdAt,
        ),
      ),
    );
  }

  void _copyToClipboard({required BuildContext context, required String text, required String message}) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PendingContainer(
      builder: (BuildContext context, Set<String> pending) {
        return DetailsContainer(
          builder: (BuildContext context, DetailsState state) {
            final bool editing = state.editing;
            return Scaffold(
              appBar: AppBar(
                bottomOpacity: 0,
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: editing
                    ? TextButton(
                        style: appBarButtonStyle(),
                        child: const Text(
                          'Exit',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          showDialog<void>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Exit without saving?'),
                              content: const Text('Your changes will not be saved.'),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('CANCEL'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    StoreProvider.of<AppState>(context).dispatch(const SetEditingStart(editing: false));
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ),
                          );
                        },
                      )
                    : TextButton(
                        style: appBarButtonStyle(),
                        child: const Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                actions: <Widget>[
                  if (!editing)
                    TextButton(
                      style: appBarButtonStyle(),
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                      onPressed: () =>
                          StoreProvider.of<AppState>(context).dispatch(const SetEditingStart(editing: true)),
                    ),
                  if (editing)
                    TextButton(
                      style: appBarButtonStyle(),
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.indigo),
                      ),
                      onPressed: () {
                        _onSubmit(context, _password);
                        Navigator.pop(context);
                      },
                    ),
                ],
              ),
              body: pending.contains(SetEditing.pendingKey)
                  ? const Center(child: CircularProgressIndicator())
                  : ListView(
                      physics: const BouncingScrollPhysics(),
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                      padding: const EdgeInsets.all(24),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: ExcludeFocus(
                            excluding: !editing,
                            child: TextFormField(
                              controller: _titleController,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              maxLength: editing ? 20 : null,
                              readOnly: !editing,
                              enableInteractiveSelection: editing,
                              style: editing ? null : const TextStyle(color: Colors.black54),
                              decoration: InputDecoration(
                                labelText: 'Title',
                                suffixIcon: !editing
                                    ? IconButton(
                                        icon: const Icon(
                                          Icons.copy,
                                          color: Colors.black,
                                        ),
                                        onPressed: () => _copyToClipboard(
                                          context: context,
                                          text: _password.title,
                                          message: 'Title copied to clipboard',
                                        ),
                                      )
                                    : null,
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
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: ExcludeFocus(
                            excluding: !editing,
                            child: TextFormField(
                              controller: _usernameController,
                              focusNode: _usernameNode,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              readOnly: !editing,
                              enableSuggestions: false,
                              enableInteractiveSelection: editing,
                              style: editing ? null : const TextStyle(color: Colors.black54),
                              decoration: InputDecoration(
                                labelText: 'Username / Email Address',
                                suffixIcon: !editing
                                    ? IconButton(
                                        icon: const Icon(
                                          Icons.copy,
                                          color: Colors.black,
                                        ),
                                        onPressed: () => _copyToClipboard(
                                          context: context,
                                          text: _password.title,
                                          message: 'Username copied to clipboard',
                                        ),
                                      )
                                    : null,
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
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: ExcludeFocus(
                            excluding: !editing,
                            child: TextFormField(
                              controller: _passwordController,
                              focusNode: _passwordNode,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              textInputAction: TextInputAction.next,
                              readOnly: !editing,
                              enableInteractiveSelection: editing,
                              style: editing ? null : const TextStyle(color: Colors.black54),
                              enableSuggestions: false,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                suffixIcon: !editing
                                    ? IconButton(
                                        icon: const Icon(
                                          Icons.copy,
                                          color: Colors.black,
                                        ),
                                        onPressed: () => _copyToClipboard(
                                          context: context,
                                          text: _password.title,
                                          message: 'Password copied to clipboard',
                                        ),
                                      )
                                    : null,
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
                        ),
                        if (editing || _password.note != '')
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: ExcludeFocus(
                              excluding: !editing,
                              child: TextFormField(
                                controller: _noteController,
                                focusNode: _noteNode,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.multiline,
                                minLines: 1,
                                maxLines: 5,
                                maxLength: editing ? 120 : null,
                                readOnly: !editing,
                                enableInteractiveSelection: editing,
                                style: editing ? null : const TextStyle(color: Colors.black54),
                                decoration: InputDecoration(
                                  labelText: 'Note',
                                  suffixIcon: !editing
                                      ? IconButton(
                                          icon: const Icon(
                                            Icons.copy,
                                            color: Colors.black,
                                          ),
                                          onPressed: () => _copyToClipboard(
                                            context: context,
                                            text: _password.note,
                                            message: 'Note copied to clipboard',
                                          ),
                                        )
                                      : null,
                                ),
                                onFieldSubmitted: (_) {
                                  _onSubmit(context, _password);
                                },
                              ),
                            ),
                          ),
                      ],
                    ),
            );
          },
        );
      },
    );
  }
}

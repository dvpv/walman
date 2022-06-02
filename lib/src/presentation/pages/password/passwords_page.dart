import 'package:flutter/material.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/password_list_tile.dart';
import 'package:walman/src/presentation/pages/password/no_passwords_message.dart';

class PasswordsPage extends StatefulWidget {
  const PasswordsPage({Key? key}) : super(key: key);

  static const String title = 'Passwords';

  @override
  State<PasswordsPage> createState() => _PasswordsPageState();
}

class _PasswordsPageState extends State<PasswordsPage> {
  @override
  void initState() {
    FocusManager.instance.primaryFocus?.unfocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BundleContainer(
        builder: (BuildContext context, Bundle bundle) {
          if (bundle.passwords.isEmpty) {
            return const NoPasswordsMessage();
          }
          final List<Password> passwords = bundle.passwords.toList()
            ..sort((Password a, Password b) => b.timesAccessed - a.timesAccessed);
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: passwords.length,
            itemBuilder: (BuildContext context, int index) {
              final Password password = passwords[index];
              return PasswordListTile(password: password);
            },
          );
        },
      ),
    );
  }
}

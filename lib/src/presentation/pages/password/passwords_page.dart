import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/password/password_details_page.dart';

class PasswordsPage extends StatefulWidget {
  const PasswordsPage({Key? key}) : super(key: key);

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
          final List<Password> passwords = bundle.passwords;
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: passwords.length,
            itemBuilder: (BuildContext context, int index) {
              final Password password = passwords[index];
              return ListTile(
                title: Text(password.title),
                subtitle: Text(password.username),
                trailing: IconButton(
                  icon: const Icon(Icons.copy),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: password.password));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Password for ${password.title} copied to your clipboard'),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
                onTap: () {
                  StoreProvider.of<AppState>(context).dispatch(
                    SetDetailsPasswordTargetStart(
                      password,
                      (_) => Navigator.pushNamed(context, PasswordDetailsPage.route),
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

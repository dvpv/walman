import 'package:flutter/material.dart';
import 'package:walman/src/containers/user_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/index_page.dart';
import 'package:walman/src/presentation/pages/login_page.dart';
import 'package:walman/src/presentation/pages/unlock_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        if (user != null) {
          if (user.masterKey != null) {
            return const IndexPage();
          }
          return const UnlockPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:walman/src/containers/user_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/auth/login_page.dart';
import 'package:walman/src/presentation/home/index_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return user != null ? const IndexPage() : const LoginPage();
      },
    );
  }
}

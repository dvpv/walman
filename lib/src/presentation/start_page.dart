import 'package:flutter/material.dart';
import 'package:walman/src/containers/user_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/home/home_page.dart';
import 'package:walman/src/presentation/login/login_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? user) {
        return user != null ? const HomePage() : const LoginPage();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:walman/src/presentation/home/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'walman',
      home: HomePage(),
    );
  }
}

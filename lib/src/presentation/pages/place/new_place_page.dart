import 'package:flutter/material.dart';

class NewPlacePage extends StatelessWidget {
  const NewPlacePage({Key? key}) : super(key: key);

  static const String route = '/new-place';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('New place'),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:walman/src/presentation/pages/sync/sync_page_menu_button.dart';

class SyncPage extends StatelessWidget {
  const SyncPage({Key? key}) : super(key: key);

  static const String route = '/sync';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sync'),
        actions: const <Widget>[
          SyncPageMenuButton(),
        ],
      ),
      body: const Center(
        child: Text('sync page'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/models/index.dart';

class PasswordsPage extends StatefulWidget {
  const PasswordsPage({Key? key}) : super(key: key);

  @override
  State<PasswordsPage> createState() => _PasswordsPageState();
}

class _PasswordsPageState extends State<PasswordsPage> {
  final List<Password> passwords = <Password>[
    Password(username: 'username', password: '12345', title: 'Site 1', note: '123', createdAt: DateTime.now()),
    Password(username: 'usrnam3', password: 'somepassword', title: 'Site 2', note: '321', createdAt: DateTime.now()),
    Password(username: 'username', password: '12345', title: 'Site 3', note: 'abc', createdAt: DateTime.now()),
    Password(username: 'username', password: '12345', title: 'Site 4', note: 'efg', createdAt: DateTime.now()),
    Password(username: 'username', password: '12345', title: 'Site 5', note: 'hij', createdAt: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BundleContainer(
        builder: (BuildContext context, Bundle bundle) {
          return ListView.builder(
            itemCount: passwords.length,
            itemBuilder: (BuildContext context, int index) {
              final Password password = passwords[index];
              return ListTile(
                title: Text(password.title),
                subtitle: Text(password.username),
                trailing: IconButton(
                  icon: const Icon(Icons.copy),
                  onPressed: () {},
                ),
                onTap: () {},
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';

enum _MenuOptions {
  edit,
  delete,
}

class PasswordMenuButton extends StatelessWidget {
  const PasswordMenuButton({Key? key, required this.password}) : super(key: key);

  final Password password;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_MenuOptions>(
      onSelected: (_MenuOptions result) {
        switch (result) {
          case _MenuOptions.edit:
            StoreProvider.of<AppState>(context).dispatch(const SetEditingStart(editing: true));
            break;
          case _MenuOptions.delete:
            showDialog<void>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Delete this item?'),
                content: Text('Are you sure you want to delete ${password.title}?'),
                actions: <Widget>[
                  TextButton(
                    child: const Text('CANCEL'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: const Text('DELETE'),
                    onPressed: () {
                      StoreProvider.of<AppState>(context).dispatch(DeletePassword(password.id));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Password deleted'),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            );
            break;
        }
      },
      icon: const Icon(
        Icons.more_vert,
        color: Colors.black,
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.edit,
          child: ListTile(
            title: Text(
              'Edit',
            ),
          ),
        ),
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.delete,
          child: ListTile(
            title: Text(
              'Delete',
            ),
          ),
        )
      ],
    );
  }
}

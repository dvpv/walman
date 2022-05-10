import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/password/password_details_page.dart';

class PasswordListTile extends StatelessWidget {
  const PasswordListTile({Key? key, required this.password}) : super(key: key);

  final Password password;

  void _onDetails(BuildContext context, Password password) {
    StoreProvider.of<AppState>(context).dispatch(
      SelectItemDetailsStart(
        password.id,
        (_) => Navigator.pushNamed(context, PasswordDetailsPage.route),
      ),
    );
  }

  void _onCopy(BuildContext context, Password password) {
    Clipboard.setData(ClipboardData(text: password.password));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Password for ${password.title} copied to your clipboard'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _onDelete(BuildContext context, Password password) {
    // TODO(dvpv): add dialog alert to confirm delete
    StoreProvider.of<AppState>(context).dispatch(DeletePassword(password.id));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.2,
          motion: const DrawerMotion(),
          children: <Widget>[
            SlidableAction(
              onPressed: (BuildContext context) => _onDelete(context, password),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: ListTile(
          title: Text(password.title),
          subtitle: Text(password.username),
          trailing: IconButton(
            icon: const Icon(Icons.copy),
            onPressed: () => _onCopy(context, password),
          ),
          onTap: () => _onDetails(context, password),
          onLongPress: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: Colors.black54,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.remove_red_eye),
                          title: const Text('View'),
                          onTap: () {
                            Navigator.pop(context);
                            _onDetails(context, password);
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.copy),
                          title: const Text('Copy'),
                          onTap: () {
                            Navigator.pop(context);
                            _onCopy(context, password);
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.delete),
                          title: const Text('Delete'),
                          onTap: () {
                            Navigator.pop(context);
                            _onDelete(context, password);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

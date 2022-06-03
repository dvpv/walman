import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/utils/otp.dart';

class AuthenticatorTokenCard extends StatelessWidget {
  const AuthenticatorTokenCard({Key? key, required this.token}) : super(key: key);

  final OTPToken token;

  void _copyToClipboard({required BuildContext context, required String text, required String message}) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _delete(BuildContext context) {
    StoreProvider.of<AppState>(context).dispatch(DeleteOTPToken(token));
  }

  @override
  Widget build(BuildContext context) {
    final double count = DateTime.now().millisecondsSinceEpoch / 1000 / token.period;
    final double progressIndicatorValue = count - count.truncate();
    final int timeLeft = token.period - (progressIndicatorValue * token.period).floor();
    final String code = getToken(token);
    return Card(
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.2,
          motion: const DrawerMotion(),
          children: <Widget>[
            SlidableAction(
              onPressed: _delete,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: ListTile(
          onTap: () => _copyToClipboard(context: context, text: code, message: 'Code copied to clipboard'),
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
                          leading: const Icon(Icons.copy),
                          title: const Text('Copy'),
                          onTap: () {
                            Navigator.pop(context);
                            _copyToClipboard(context: context, text: code, message: 'Code copied to clipboard');
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.delete),
                          title: const Text('Delete'),
                          onTap: () {
                            Navigator.pop(context);
                            _delete(context);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                token.title,
                style: const TextStyle(fontSize: 18),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    token.path.replaceAll('/', ''),
                    style: const TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                ),
              ),
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              code,
              style: const TextStyle(
                fontSize: 30,
                letterSpacing: 5,
                color: Colors.black,
              ),
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(8),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Text(
                  '$timeLeft',
                  style: const TextStyle(fontSize: 18),
                ),
                CircularProgressIndicator(
                  strokeWidth: 10,
                  value: progressIndicatorValue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

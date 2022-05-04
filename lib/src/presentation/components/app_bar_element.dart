import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/navigation_container.dart';
import 'package:walman/src/models/index.dart';

class AppBarElement extends StatelessWidget {
  const AppBarElement({Key? key, required this.icon, required this.page, required this.label}) : super(key: key);

  final IconData icon;
  final AppPage page;
  final String label;

  @override
  Widget build(BuildContext context) {
    return NavigationContainer(
      builder: (BuildContext context, AppPage currentPage) {
        return MaterialButton(
          onPressed: () {
            if (currentPage != page) {
              StoreProvider.of<AppState>(context).dispatch(ChangeAppPage(page));
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  color: currentPage == page ? Colors.white : Colors.white70,
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: currentPage == page ? Colors.white : Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

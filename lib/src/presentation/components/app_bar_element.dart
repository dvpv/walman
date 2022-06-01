import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/navigation_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/button_styles.dart';

class AppBarElement extends StatelessWidget {
  const AppBarElement({Key? key, required this.icon, required this.page, required this.label}) : super(key: key);

  final IconData icon;
  final AppPage page;
  final String label;

  @override
  Widget build(BuildContext context) {
    return NavigationContainer(
      builder: (BuildContext context, AppPage currentPage) {
        return TextButton(
          style: appBarButtonStyle(borderRadius: 100),
          onPressed: () {
            if (currentPage != page) {
              StoreProvider.of<AppState>(context).dispatch(ChangeAppPage(page));
            }
          },
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
        );
      },
    );
  }
}

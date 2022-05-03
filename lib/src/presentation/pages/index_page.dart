import 'package:flutter/material.dart';
import 'package:walman/src/containers/navigation_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/app_bar_element.dart';
import 'package:walman/src/presentation/components/app_bars.dart';
import 'package:walman/src/presentation/pages/codes_page.dart';
import 'package:walman/src/presentation/pages/home_page.dart';
import 'package:walman/src/presentation/pages/passwords_page.dart';
import 'package:walman/src/presentation/pages/places_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationContainer(
      builder: (BuildContext context, AppPage selectedPage) {
        late final Widget body;
        late final PreferredSizeWidget appBar;
        switch (selectedPage) {
          case AppPage.home:
            body = const HomePage();
            appBar = mainAppBar(context);
            break;
          case AppPage.passwords:
            body = const PasswordsPage();
            appBar = passwordsAppBar(context);
            break;
          case AppPage.places:
            body = const PlacesPage();
            appBar = passwordsAppBar(context);
            break;
          case AppPage.codes:
            body = const CodesPage();
            appBar = passwordsAppBar(context);
            break;
        }
        return Scaffold(
          appBar: appBar,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            decoration: const BoxDecoration(
              color: Colors.indigo,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              color: Colors.black,
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.indigo,
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                SizedBox(width: 4),
                AppBarElement(icon: Icons.home, page: AppPage.home, label: 'Home'),
                AppBarElement(icon: Icons.lock, page: AppPage.passwords, label: 'Passwords'),
                SizedBox(width: 40),
                AppBarElement(icon: Icons.location_on, page: AppPage.places, label: 'Places'),
                AppBarElement(icon: Icons.qr_code, page: AppPage.codes, label: 'Codes'),
                SizedBox(width: 4),
              ],
            ),
          ),
          body: body,
        );
      },
    );
  }
}

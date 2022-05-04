import 'package:flutter/material.dart';
import 'package:walman/src/containers/navigation_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/app_bar_element.dart';
import 'package:walman/src/presentation/components/search_delegate.dart';
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
        switch (selectedPage) {
          case AppPage.home:
            body = const HomePage();
            break;
          case AppPage.passwords:
            body = const PasswordsPage();
            break;
          case AppPage.places:
            body = const PlacesPage();
            break;
          case AppPage.codes:
            body = const CodesPage();
            break;
        }
        return Scaffold(
          appBar: AppBar(
            bottomOpacity: 0,
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {
                  showSearch(context: context, delegate: HomePageSearchDelegate());
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
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
              onPressed: () {
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
                              leading: const Icon(Icons.lock),
                              title: const Text('Create a new password'),
                              onTap: () => Navigator.popAndPushNamed(context, '/new-password'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.place),
                              title: const Text('Create a new place'),
                              onTap: () => Navigator.popAndPushNamed(context, '/new-place'),
                            ),
                            ListTile(
                              leading: const Icon(Icons.qr_code),
                              title: const Text('Create a new code'),
                              onTap: () => Navigator.popAndPushNamed(context, '/new-code'),
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
          bottomNavigationBar: BottomAppBar(
            color: Colors.indigo,
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                AppBarElement(icon: Icons.home, page: AppPage.home, label: 'Home'),
                AppBarElement(icon: Icons.lock, page: AppPage.passwords, label: 'Passwords'),
                AppBarElement(icon: Icons.location_on, page: AppPage.places, label: 'Places'),
                AppBarElement(icon: Icons.qr_code, page: AppPage.codes, label: 'Codes'),
              ],
            ),
          ),
          body: body,
        );
      },
    );
  }
}
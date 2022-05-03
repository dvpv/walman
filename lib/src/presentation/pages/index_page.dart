import 'package:flutter/material.dart';
import 'package:walman/src/containers/state_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/app_bottom_navigation_bar.dart';
import 'package:walman/src/presentation/components/search_delegate.dart';
import 'package:walman/src/presentation/pages/codes_page.dart';
import 'package:walman/src/presentation/pages/home_page.dart';
import 'package:walman/src/presentation/pages/passwords_page.dart';
import 'package:walman/src/presentation/pages/places_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateContainer(
      builder: (BuildContext context, AppState state) {
        late final Widget body;
        switch (state.selectedPage) {
          case 0:
            body = const HomePage();
            break;
          case 1:
            body = const PasswordsPage();
            break;
          case 2:
            body = const PlacesPage();
            break;
          case 3:
            body = const CodesPage();
            break;
          default:
            body = const HomePage();
            break;
        }
        return Scaffold(
          appBar: AppBar(
            bottomOpacity: 0,
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(
                Icons.sync,
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
          bottomNavigationBar: const AppBottomNavigationBar(),
          body: body,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:walman/src/containers/state_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/home/addresses_body.dart';
import 'package:walman/src/presentation/home/home_body.dart';
import 'package:walman/src/presentation/home/home_drawer.dart';
import 'package:walman/src/presentation/home/passwords_body.dart';
import 'package:walman/src/presentation/home/search_delegate.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateContainer(
      builder: (BuildContext context, AppState state) {
        late final Widget body;
        switch (state.selectedDrawerPage) {
          case DrawerPage.home:
            body = const HomeBody();
            break;
          case DrawerPage.addresses:
            body = const AddressesBody();
            break;
          case DrawerPage.passwords:
            body = const PasswordsBody();
            break;
        }
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: HomePageSearchDelegate());
                },
              ),
            ],
          ),
          drawer: const HomeDrawer(),
          body: body,
        );
      },
    );
  }
}

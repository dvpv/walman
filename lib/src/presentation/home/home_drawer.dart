import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/state_container.dart';
import 'package:walman/src/containers/user_container.dart';
import 'package:walman/src/models/index.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  void initState() {
    if (StoreProvider.of<AppState>(context, listen: false).state.showAccountManagementOptions) {
      StoreProvider.of<AppState>(context, listen: false).dispatch(const ToggleAccountManagementList());
    }
    super.initState();
  }

  void _selectDestination(DrawerPage newPage) =>
      StoreProvider.of<AppState>(context).dispatch(ChangeDrawerPage(newPage));

  @override
  Widget build(BuildContext context) {
    return StateContainer(
      builder: (BuildContext context, AppState state) {
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: UserContainer(
                  builder: (BuildContext context, AppUser? user) {
                    return UserAccountsDrawerHeader(
                      accountEmail: Text(user!.email),
                      accountName: Text(user.username),
                      onDetailsPressed: () =>
                          StoreProvider.of<AppState>(context).dispatch(const ToggleAccountManagementList()),
                    );
                  },
                ),
              ),
              if (state.showAccountManagementOptions)
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () => StoreProvider.of<AppState>(context).dispatch(const LogoutStart()),
                ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                selected: state.selectedDrawerPage == DrawerPage.home,
                onTap: () => _selectDestination(DrawerPage.home),
              ),
              ListTile(
                leading: const Icon(Icons.shield),
                title: const Text('Passwords'),
                selected: state.selectedDrawerPage == DrawerPage.passwords,
                onTap: () => _selectDestination(DrawerPage.passwords),
              ),
              ListTile(
                leading: const Icon(Icons.place),
                title: const Text('Addresses'),
                selected: state.selectedDrawerPage == DrawerPage.addresses,
                onTap: () => _selectDestination(DrawerPage.addresses),
              ),
              const Divider(
                height: 1,
                thickness: 1,
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Groups',
                ),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Favorites'),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/navigation_container.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/app_bar_menu_button.dart';
import 'package:walman/src/presentation/components/search_delegate.dart';
import 'package:walman/src/presentation/pages/authenticator/authenticator_page.dart';
import 'package:walman/src/presentation/pages/authenticator/new_authenticator_page.dart';
import 'package:walman/src/presentation/pages/code/codes_page.dart';
import 'package:walman/src/presentation/pages/code/scan_new_code_page.dart';
import 'package:walman/src/presentation/pages/home/home_page.dart';
import 'package:walman/src/presentation/pages/password/new_password_page.dart';
import 'package:walman/src/presentation/pages/password/passwords_page.dart';
import 'package:walman/src/presentation/pages/wallet/wallet_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  void _onNew(BuildContext context) {
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
                  onTap: () => Navigator.popAndPushNamed(context, NewPasswordPage.route),
                ),
                ListTile(
                  leading: const Icon(Icons.place),
                  title: const Text('Create a new place'),
                  onTap: () => Navigator.popAndPushNamed(context, NewAuthenticatorPage.route),
                ),
                ListTile(
                  leading: const Icon(Icons.qr_code),
                  title: const Text('Create a new code'),
                  onTap: () => Navigator.popAndPushNamed(context, ScanNewCodePage.route),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return NavigationContainer(
      builder: (BuildContext context, int selectedPage) {
        late final Widget page;
        late final String title;
        switch (selectedPage) {
          case 0:
            page = const HomePage();
            title = HomePage.title;
            break;
          case 1:
            page = const PasswordsPage();
            title = PasswordsPage.title;
            break;
          case 2:
            page = const CodesPage();
            title = CodesPage.title;
            break;
          case 3:
            page = const AuthenticatorPage();
            title = AuthenticatorPage.title;
            break;
          case 4:
            page = const WalletPage();
            title = WalletPage.title;
            break;
        }
        return BundleContainer(
          builder: (BuildContext context, Bundle bundle) {
            return Scaffold(
              appBar: AppBar(
                title: Text(title),
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
                      showSearch(context: context, delegate: HomePageSearchDelegate(bundle));
                    },
                  ),
                  const AppBarMenuButton(),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () => _onNew(context),
              ),
              resizeToAvoidBottomInset: false,
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: selectedPage,
                backgroundColor: Theme.of(context).primaryColor,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white54,
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: 'Home',
                    icon: Icon(Icons.home_filled),
                  ),
                  BottomNavigationBarItem(
                    label: 'Passwords',
                    icon: Icon(Icons.lock),
                  ),
                  BottomNavigationBarItem(
                    label: 'Codes',
                    icon: Icon(Icons.qr_code),
                  ),
                  BottomNavigationBarItem(
                    label: 'OTP',
                    icon: Icon(Icons.password),
                  ),
                  BottomNavigationBarItem(
                    label: 'Wallet',
                    icon: Icon(Icons.account_balance_wallet),
                  ),
                ],
                onTap: (int index) => StoreProvider.of<AppState>(context).dispatch(ChangeAppPage(index)),
              ),
              body: PendingContainer(
                builder: (BuildContext context, Set<String> pending) {
                  if (pending.contains(GetBundle.pendingKey)) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return page;
                },
              ),
            );
          },
        );
      },
    );
  }
}

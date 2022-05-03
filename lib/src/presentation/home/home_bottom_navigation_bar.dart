import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/navigation_container.dart';
import 'package:walman/src/models/index.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavigationBar> createState() => _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationContainer(
      builder: (BuildContext context, int selectedPage) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.indigo,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          unselectedFontSize: 14,
          onTap: (int index) {
            if (index != selectedPage) {
              StoreProvider.of<AppState>(context).dispatch(ChangeAppPage(index));
            }
          },
          currentIndex: selectedPage,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Passwords',
              icon: Icon(Icons.lock),
            ),
            BottomNavigationBarItem(
              label: 'Places',
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              label: 'Codes',
              icon: Icon(Icons.qr_code),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:walman/src/presentation/home/home_drawer.dart';
import 'package:walman/src/presentation/home/search_delegate.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: const Center(
        child: Text('homepage'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:walman/src/presentation/home/search_delegate.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: HomePageSearchDelegate());
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('homepage'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/code/code_details.dart';
import 'package:walman/src/presentation/pages/password/password_details.dart';

class HomePageSearchDelegate extends SearchDelegate<void> {
  HomePageSearchDelegate(this._bundle);

  final Bundle _bundle;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<BundleItem> items = <BundleItem>[..._bundle.passwords, ..._bundle.codes]
        .where((BundleItem item) => item.title.toLowerCase().contains(query.toLowerCase()))
        .toList()
      ..sort((BundleItem a, BundleItem b) => a.timesAccessed - b.timesAccessed);
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final BundleItem item = items[index];
        return ListTile(
          leading: item is Password ? const Icon(Icons.lock) : const Icon(Icons.qr_code),
          title: Text(item.title),
          subtitle: item is Password ? Text(item.username) : null,
          onTap: () {
            close(context, null);
            StoreProvider.of<AppState>(context).dispatch(
              SelectItemDetails(
                item.id,
                (_) => Navigator.pushNamed(context, item is Password ? PasswordDetails.route : CodeDetails.route),
              ),
            );
          },
        );
      },
    );
  }
}

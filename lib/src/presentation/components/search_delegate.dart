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
    final List<BundleItem> items = <BundleItem>[..._bundle.passwords, ..._bundle.codes, ..._bundle.otpTokens]
        .where(
          (BundleItem item) =>
              (item.title.toLowerCase().contains(query.toLowerCase()) ||
                  (item is Password &&
                      (item.note.toLowerCase().contains(query.toLowerCase()) ||
                          item.username.toLowerCase().contains(query.toLowerCase())))) ||
              (item is OTPToken &&
                  (item.issuer.toLowerCase().contains(query.toLowerCase()) ||
                      item.path.toLowerCase().contains(query.toLowerCase()))),
        )
        .toList()
      ..sort((BundleItem a, BundleItem b) => a.timesAccessed - b.timesAccessed);
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final BundleItem item = items[index];
        if (item is Password) {
          return ListTile(
            leading: const Icon(Icons.lock),
            title: Text(item.title),
            subtitle: Text(item.username),
            onTap: () {
              close(context, null);
              StoreProvider.of<AppState>(context).dispatch(
                SelectItemDetails(
                  item.id,
                  (_) => Navigator.pushNamed(context, PasswordDetails.route),
                ),
              );
            },
          );
        }
        if (item is Code) {
          return ListTile(
            leading: const Icon(Icons.qr_code),
            title: Text(item.title),
            onTap: () {
              close(context, null);
              StoreProvider.of<AppState>(context).dispatch(
                SelectItemDetails(
                  item.id,
                  (_) => Navigator.pushNamed(context, CodeDetails.route),
                ),
              );
            },
          );
        }
        if (item is OTPToken) {
          return ListTile(
            leading: const Icon(Icons.password),
            title: Text(item.title),
            subtitle: Text(item.path.replaceAll('/', '')),
            onTap: () {
              close(context, null);
              StoreProvider.of<AppState>(context).dispatch(const ChangeAppPage(3));
            },
          );
        }
        return Container();
      },
    );
  }
}

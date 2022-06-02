import 'package:flutter/material.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/code_card.dart';
import 'package:walman/src/presentation/components/password_list_tile.dart';

const double _kDividerIndent = 50;
const double _kDividerHeight = 50;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String title = 'Home';

  @override
  Widget build(BuildContext context) {
    return PendingContainer(
      builder: (BuildContext context, Set<String> pending) {
        return pending.contains(GetBundle.pendingKey) || pending.contains(BlockchainRestoreLatestBundle.pendingKey)
            ? const Center(child: CircularProgressIndicator())
            : BundleContainer(
                builder: (BuildContext context, Bundle bundle) {
                  final List<Password> passwords = bundle.passwords.toList()
                    ..sort((Password a, Password b) => b.timesAccessed - a.timesAccessed);
                  final List<Code> codes = bundle.codes.toList()
                    ..sort((Code a, Code b) => b.timesAccessed - a.timesAccessed);
                  return ListView(
                    physics: const BouncingScrollPhysics(),
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Passwords',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: passwords.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Password password = passwords[index];
                            return PasswordListTile(password: password);
                          },
                        ),
                      ),
                      const Divider(
                        height: _kDividerHeight,
                        indent: _kDividerIndent,
                        endIndent: _kDividerIndent,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Codes',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: codes.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Code code = codes[index];
                            return CodeCard(code: code);
                          },
                        ),
                      ),
                      const Divider(
                        height: _kDividerHeight,
                        indent: _kDividerIndent,
                        endIndent: _kDividerIndent,
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  );
                },
              );
      },
    );
  }
}

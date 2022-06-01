import 'package:flutter/material.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/containers/master_key_container.dart';
import 'package:walman/src/containers/master_key_hash_container.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/presentation/pages/index_page.dart';
import 'package:walman/src/presentation/pages/welcome/welcome_back_page.dart';
import 'package:walman/src/presentation/pages/welcome/welcome_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return PendingContainer(
      builder: (BuildContext context, Set<String> pending) {
        if (pending.contains(GetMasterKeyHash.pendingKey)) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        return MasterKeyHashContainer(
          builder: (BuildContext context, String? masterKeyHash) {
            if (masterKeyHash == null || masterKeyHash.isEmpty) {
              return const WelcomePage();
            }
            return MasterKeyContainer(
              builder: (BuildContext context, String? masterKey) {
                if (masterKey == null || masterKey.isEmpty) {
                  return const WelcomeBackPage();
                }
                return const IndexPage();
              },
            );
          },
        );
      },
    );
  }
}

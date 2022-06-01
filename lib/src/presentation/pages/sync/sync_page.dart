import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/containers/vault_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/sync/sync_page_menu_button.dart';
import 'package:walman/src/presentation/pages/wallet/vault_bundle_card.dart';

class SyncPage extends StatelessWidget {
  const SyncPage({Key? key}) : super(key: key);

  static const String route = '/sync';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sync'),
        actions: const <Widget>[
          SyncPageMenuButton(),
        ],
      ),
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          return VaultContainer(
            builder: (BuildContext context, List<VaultBundle> vault) {
              if (pending.contains(BlockchainGetVault.pendingKey)) {
                return const Center(child: CircularProgressIndicator());
              }
              return RefreshIndicator(
                onRefresh: () async {
                  final Store<AppState> store = StoreProvider.of<AppState>(context);
                  final String? walletPrivateKey = store.state.persistentState.walletPrivateKey;
                  if (walletPrivateKey != null && walletPrivateKey.isNotEmpty) {
                    store.dispatch(
                      BlockchainGetVaultStart(
                        masterKey: store.state.masterKey!,
                        walletPrivateKey: walletPrivateKey,
                      ),
                    );
                  }
                  // TODO(dvpv): Here we need to load the cloud bundles too!
                },
                child: ListView.builder(
                  itemCount: vault.length,
                  itemBuilder: (BuildContext context, int index) {
                    final VaultBundle bundle = vault[index];
                    return VaultBundleCard(bundle: bundle);
                  },
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

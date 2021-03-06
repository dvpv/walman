import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/containers/vault_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/sync/no_vault_message.dart';
import 'package:walman/src/presentation/pages/sync/sync_page_menu_button.dart';
import 'package:walman/src/presentation/pages/sync/vault_bundle_card.dart';

class SyncPage extends StatefulWidget {
  const SyncPage({Key? key}) : super(key: key);

  static const String route = '/sync';

  @override
  State<SyncPage> createState() => _SyncPageState();
}

class _SyncPageState extends State<SyncPage> {
  @override
  void initState() {
    super.initState();
    final Store<AppState> store = StoreProvider.of<AppState>(context, listen: false);
    final String? walletPrivateKey = store.state.persistentState.walletPrivateKey;
    if (walletPrivateKey != null && walletPrivateKey.isNotEmpty) {
      store.dispatch(
        BlockchainGetVaultStart(
          masterKey: store.state.masterKey!,
          walletPrivateKey: walletPrivateKey,
        ),
      );
    }
    final FirebaseUser? firebaseUser = store.state.firebaseUser;
    if (firebaseUser != null) {
      store.dispatch(CloudGetVaultStart(firebaseUser: firebaseUser, masterKey: store.state.masterKey!));
    }
  }

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
              if (pending.contains(BlockchainGetVault.pendingKey) ||
                  pending.contains(CloudGetVault.pendingKey) ||
                  pending.contains(CloudDeleteItemFromVault.pendingKey)) {
                return const Center(child: CircularProgressIndicator());
              }
              if (vault.isEmpty) {
                return const NoVaultMessage();
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
                  final FirebaseUser? firebaseUser = store.state.firebaseUser;
                  if (firebaseUser != null) {
                    store.dispatch(CloudGetVaultStart(firebaseUser: firebaseUser, masterKey: store.state.masterKey!));
                  }
                },
                child: ListView.builder(
                  itemCount: vault.length,
                  itemBuilder: (BuildContext context, int index) {
                    final VaultBundle bundle = vault[index];
                    return VaultBundleCard(vaultBundle: bundle);
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

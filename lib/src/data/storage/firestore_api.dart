import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/utils/encryption.dart';

class FirestoreApi {
  FirestoreApi(this._firestore);

  final FirebaseFirestore _firestore;

  Future<List<VaultBundle>> getVault({required FirebaseUser user, required String masterKey}) async {
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('vaults/${user.uid}').get();
    if (!snapshot.exists) {
      await _firestore.doc('vaults/${user.uid}').set(<String, dynamic>{});
      return <VaultBundle>[];
    }
    final List<dynamic> encryptedVault = snapshot.data()!['vault'] as List<dynamic>;
    final List<VaultBundle> vault = encryptedVault
        .map((dynamic e) => e as Map<String, dynamic>)
        .map(
          (Map<String, dynamic> e) => VaultBundle(
            bundle: Bundle.fromJson(
              jsonDecode(decrypt(message: e['bundle'] as String, key: masterKey)) as Map<String, dynamic>,
            ),
            storedAt: DateTime.fromMillisecondsSinceEpoch(e['storedAt'] as int),
            type: BundleType.cloud,
          ),
        )
        .toList();
    return vault;
  }

  Future<void> storeVault({
    required FirebaseUser user,
    required List<VaultBundle> vault,
    required String masterKey,
  }) async {
    final List<Map<String, dynamic>> encryptedVault = vault
        .map(
          (VaultBundle vaultBundle) => <String, dynamic>{
            'bundle': encrypt(message: jsonEncode(vaultBundle.bundle), key: masterKey),
            'storedAt': vaultBundle.storedAt.millisecondsSinceEpoch,
          },
        )
        .toList();
    await _firestore.doc('vaults/${user.uid}').set(<String, dynamic>{'vault': encryptedVault});
  }
}

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:walman/src/models/index.dart';

const String _kBundleStorageKey = 'bundle';

class SecureStorageApi {
  SecureStorageApi(this._storage);

  final FlutterSecureStorage _storage;

  Future<Bundle?> getData() async {
    final String? encryptedJson = await _storage.read(key: _kBundleStorageKey);
    if (encryptedJson != null && encryptedJson.isNotEmpty) {
      final String encodedJson = _decrypt(encryptedJson);
      final Map<String, dynamic> json = jsonDecode(encodedJson) as Map<String, dynamic>;
      final Bundle bundle = Bundle.fromJson(json);
      return bundle;
    } else {
      return null;
    }
  }

  Future<void> storeData(Bundle bundle) async {
    await _storage.write(key: _kBundleStorageKey, value: _encrypt(bundle.toString()));
  }

  // TODO(dvpv): implement proper decryption and encryption
  String _decrypt(String target) => target;
  String _encrypt(String target) => target;
}

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/utils/encryption.dart';

const String _kBundleStorageKey = 'bundle';

class SecureStorageApi {
  SecureStorageApi(this._storage);

  final FlutterSecureStorage _storage;

  Future<Bundle?> getData(String masterKey) async {
    final String? encryptedJson = await _storage.read(key: _kBundleStorageKey);
    if (encryptedJson != null && encryptedJson.isNotEmpty) {
      final String encodedJson = decrypt(message: encryptedJson, key: masterKey);
      final Map<String, dynamic> json = jsonDecode(encodedJson) as Map<String, dynamic>;
      final Bundle bundle = Bundle.fromJson(json);
      return bundle;
    } else {
      return null;
    }
  }

  Future<void> storeData(Bundle bundle, String masterKey) async {
    await _storage.write(key: _kBundleStorageKey, value: encrypt(message: jsonEncode(bundle), key: masterKey));
  }
}

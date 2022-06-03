// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Address$ _$$Address$FromJson(Map<String, dynamic> json) => _$Address$();

Map<String, dynamic> _$$Address$ToJson(_$Address$ instance) => <String, dynamic>{};

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      pending: (json['pending'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? const <String>{},
      masterKey: json['masterKey'] as String?,
      firebaseUser:
          json['firebaseUser'] == null ? null : FirebaseUser.fromJson(json['firebaseUser'] as Map<String, dynamic>),
      vault: (json['vault'] as List<dynamic>?)?.map((e) => VaultBundle.fromJson(e as Map<String, dynamic>)).toList() ??
          const <VaultBundle>[],
      selectedPage: json['selectedPage'] as int? ?? 0,
      persistentState: json['persistentState'] == null
          ? const PersistentState()
          : PersistentState.fromJson(json['persistentState'] as Map<String, dynamic>),
      detailsState: json['detailsState'] == null
          ? const DetailsState()
          : DetailsState.fromJson(json['detailsState'] as Map<String, dynamic>),
      createCodeState: json['createCodeState'] == null
          ? const CreateCodeState()
          : CreateCodeState.fromJson(json['createCodeState'] as Map<String, dynamic>),
      uiState: json['uiState'] == null ? const UIState() : UIState.fromJson(json['uiState'] as Map<String, dynamic>),
      passwordGeneratorState: json['passwordGeneratorState'] == null
          ? const PasswordGeneratorState()
          : PasswordGeneratorState.fromJson(json['passwordGeneratorState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'pending': instance.pending.toList(),
      'masterKey': instance.masterKey,
      'firebaseUser': instance.firebaseUser,
      'vault': instance.vault,
      'selectedPage': instance.selectedPage,
      'persistentState': instance.persistentState,
      'detailsState': instance.detailsState,
      'createCodeState': instance.createCodeState,
      'uiState': instance.uiState,
      'passwordGeneratorState': instance.passwordGeneratorState,
    };

_$PersistentState$ _$$PersistentState$FromJson(Map<String, dynamic> json) => _$PersistentState$(
      bundle: json['bundle'] == null ? const Bundle() : Bundle.fromJson(json['bundle'] as Map<String, dynamic>),
      walletPrivateKey: json['walletPrivateKey'] as String?,
      materKeyHash: json['materKeyHash'] as String?,
    );

Map<String, dynamic> _$$PersistentState$ToJson(_$PersistentState$ instance) => <String, dynamic>{
      'bundle': instance.bundle,
      'walletPrivateKey': instance.walletPrivateKey,
      'materKeyHash': instance.materKeyHash,
    };

_$DetailsState$ _$$DetailsState$FromJson(Map<String, dynamic> json) => _$DetailsState$(
      selectedId: json['selectedId'] as String? ?? '',
      editing: json['editing'] as bool? ?? false,
    );

Map<String, dynamic> _$$DetailsState$ToJson(_$DetailsState$ instance) => <String, dynamic>{
      'selectedId': instance.selectedId,
      'editing': instance.editing,
    };

_$CreateCodeState$ _$$CreateCodeState$FromJson(Map<String, dynamic> json) => _$CreateCodeState$(
      code: json['code'] == null ? null : Code.fromJson(json['code'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateCodeState$ToJson(_$CreateCodeState$ instance) => <String, dynamic>{
      'code': instance.code,
    };

_$UIState$ _$$UIState$FromJson(Map<String, dynamic> json) => _$UIState$(
      walletInfo: json['walletInfo'] == null ? null : WalletInfo.fromJson(json['walletInfo'] as Map<String, dynamic>),
      showPassword: json['showPassword'] as bool? ?? false,
    );

Map<String, dynamic> _$$UIState$ToJson(_$UIState$ instance) => <String, dynamic>{
      'walletInfo': instance.walletInfo,
      'showPassword': instance.showPassword,
    };

_$PasswordGeneratorState$ _$$PasswordGeneratorState$FromJson(Map<String, dynamic> json) => _$PasswordGeneratorState$(
      characterPool:
          (json['characterPool'] as List<dynamic>?)?.map((e) => $enumDecode(_$CharacterPoolEnumMap, e)).toSet() ??
              kCharacterPoolValues,
      length: json['length'] as int? ?? 16,
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$PasswordGeneratorState$ToJson(_$PasswordGeneratorState$ instance) => <String, dynamic>{
      'characterPool': instance.characterPool.map((e) => _$CharacterPoolEnumMap[e]).toList(),
      'length': instance.length,
      'password': instance.password,
    };

const _$CharacterPoolEnumMap = {
  CharacterPool.lowercaseLetters: 'lowercaseLetters',
  CharacterPool.uppercaseLetters: 'uppercaseLetters',
  CharacterPool.digits: 'digits',
  CharacterPool.symbols: 'symbols',
};

_$WalletInfo$ _$$WalletInfo$FromJson(Map<String, dynamic> json) => _$WalletInfo$(
      balance: json['balance'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$WalletInfo$ToJson(_$WalletInfo$ instance) => <String, dynamic>{
      'balance': instance.balance,
      'address': instance.address,
    };

_$Bundle$ _$$Bundle$FromJson(Map<String, dynamic> json) => _$Bundle$(
      passwords:
          (json['passwords'] as List<dynamic>?)?.map((e) => Password.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Password>[],
      codes: (json['codes'] as List<dynamic>?)?.map((e) => Code.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Code>[],
      otpTokens:
          (json['otpTokens'] as List<dynamic>?)?.map((e) => OTPToken.fromJson(e as Map<String, dynamic>)).toList() ??
              const <OTPToken>[],
    );

Map<String, dynamic> _$$Bundle$ToJson(_$Bundle$ instance) => <String, dynamic>{
      'passwords': instance.passwords,
      'codes': instance.codes,
      'otpTokens': instance.otpTokens,
    };

_$VaultBundle$ _$$VaultBundle$FromJson(Map<String, dynamic> json) => _$VaultBundle$(
      bundle: Bundle.fromJson(json['bundle'] as Map<String, dynamic>),
      storedAt: DateTime.parse(json['storedAt'] as String),
      type: $enumDecode(_$BundleTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$VaultBundle$ToJson(_$VaultBundle$ instance) => <String, dynamic>{
      'bundle': instance.bundle,
      'storedAt': instance.storedAt.toIso8601String(),
      'type': _$BundleTypeEnumMap[instance.type],
    };

const _$BundleTypeEnumMap = {
  BundleType.blockchain: 'blockchain',
  BundleType.cloud: 'cloud',
};

_$Password$ _$$Password$FromJson(Map<String, dynamic> json) => _$Password$(
      id: json['id'] as String,
      title: json['title'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      note: json['note'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastAccess: DateTime.parse(json['lastAccess'] as String),
      timesAccessed: json['timesAccessed'] as int? ?? 0,
    );

Map<String, dynamic> _$$Password$ToJson(_$Password$ instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'username': instance.username,
      'password': instance.password,
      'note': instance.note,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastAccess': instance.lastAccess.toIso8601String(),
      'timesAccessed': instance.timesAccessed,
    };

_$Code$ _$$Code$FromJson(Map<String, dynamic> json) => _$Code$(
      id: json['id'] as String,
      title: json['title'] as String? ?? '',
      data: json['data'] as String,
      format: $enumDecode(_$BarcodeFormatEnumMap, json['format']),
      note: json['note'] as String? ?? '',
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastAccess: DateTime.parse(json['lastAccess'] as String),
      timesAccessed: json['timesAccessed'] as int? ?? 0,
    );

Map<String, dynamic> _$$Code$ToJson(_$Code$ instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'data': instance.data,
      'format': _$BarcodeFormatEnumMap[instance.format],
      'note': instance.note,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastAccess': instance.lastAccess.toIso8601String(),
      'timesAccessed': instance.timesAccessed,
    };

const _$BarcodeFormatEnumMap = {
  BarcodeFormat.unknown: 'unknown',
  BarcodeFormat.all: 'all',
  BarcodeFormat.code128: 'code128',
  BarcodeFormat.code39: 'code39',
  BarcodeFormat.code93: 'code93',
  BarcodeFormat.codebar: 'codebar',
  BarcodeFormat.dataMatrix: 'dataMatrix',
  BarcodeFormat.ean13: 'ean13',
  BarcodeFormat.ean8: 'ean8',
  BarcodeFormat.itf: 'itf',
  BarcodeFormat.qrCode: 'qrCode',
  BarcodeFormat.upcA: 'upcA',
  BarcodeFormat.upcE: 'upcE',
  BarcodeFormat.pdf417: 'pdf417',
  BarcodeFormat.aztec: 'aztec',
};

_$FirebaseUser$ _$$FirebaseUser$FromJson(Map<String, dynamic> json) => _$FirebaseUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$FirebaseUser$ToJson(_$FirebaseUser$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
    };

_$OTPToken$ _$$OTPToken$FromJson(Map<String, dynamic> json) => _$OTPToken$(
      id: json['id'] as String,
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastAccess: DateTime.parse(json['lastAccess'] as String),
      timesAccessed: json['timesAccessed'] as int,
      standard: $enumDecode(_$OTPStandardEnumMap, json['standard']),
      path: json['path'] as String,
      secret: json['secret'] as String,
      issuer: json['issuer'] as String,
      algorithm: $enumDecode(_$OTPAlgorithmEnumMap, json['algorithm']),
      period: json['period'] as int,
      digits: json['digits'] as int,
      keyUri: Uri.parse(json['keyUri'] as String),
    );

Map<String, dynamic> _$$OTPToken$ToJson(_$OTPToken$ instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastAccess': instance.lastAccess.toIso8601String(),
      'timesAccessed': instance.timesAccessed,
      'standard': _$OTPStandardEnumMap[instance.standard],
      'path': instance.path,
      'secret': instance.secret,
      'issuer': instance.issuer,
      'algorithm': _$OTPAlgorithmEnumMap[instance.algorithm],
      'period': instance.period,
      'digits': instance.digits,
      'keyUri': instance.keyUri.toString(),
    };

const _$OTPStandardEnumMap = {
  OTPStandard.totp: 'totp',
  OTPStandard.hotp: 'hotp',
};

const _$OTPAlgorithmEnumMap = {
  OTPAlgorithm.sha1: 'sha1',
  OTPAlgorithm.sha256: 'sha256',
  OTPAlgorithm.md5: 'md5',
};

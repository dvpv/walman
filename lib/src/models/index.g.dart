// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Address$ _$$Address$FromJson(Map<String, dynamic> json) => _$Address$();

Map<String, dynamic> _$$Address$ToJson(_$Address$ instance) => <String, dynamic>{};

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      pending: (json['pending'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? const <String>{},
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      selectedPage: $enumDecodeNullable(_$AppPageEnumMap, json['selectedPage']) ?? AppPage.home,
      bundle: json['bundle'] == null ? const Bundle() : Bundle.fromJson(json['bundle'] as Map<String, dynamic>),
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
      'user': instance.user,
      'selectedPage': _$AppPageEnumMap[instance.selectedPage],
      'bundle': instance.bundle,
      'detailsState': instance.detailsState,
      'createCodeState': instance.createCodeState,
      'uiState': instance.uiState,
      'passwordGeneratorState': instance.passwordGeneratorState,
    };

const _$AppPageEnumMap = {
  AppPage.home: 'home',
  AppPage.passwords: 'passwords',
  AppPage.places: 'places',
  AppPage.codes: 'codes',
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
      showPassword: json['showPassword'] as bool? ?? false,
    );

Map<String, dynamic> _$$UIState$ToJson(_$UIState$ instance) => <String, dynamic>{
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

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      masterKey: json['masterKey'] as String?,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'masterKey': instance.masterKey,
    };

_$Bundle$ _$$Bundle$FromJson(Map<String, dynamic> json) => _$Bundle$(
      passwords:
          (json['passwords'] as List<dynamic>?)?.map((e) => Password.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Password>[],
      codes: (json['codes'] as List<dynamic>?)?.map((e) => Code.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Code>[],
    );

Map<String, dynamic> _$$Bundle$ToJson(_$Bundle$ instance) => <String, dynamic>{
      'passwords': instance.passwords,
      'codes': instance.codes,
    };

_$BlockchainBundle$ _$$BlockchainBundle$FromJson(Map<String, dynamic> json) => _$BlockchainBundle$(
      bundle: Bundle.fromJson(json['bundle'] as Map<String, dynamic>),
      storedAt: DateTime.parse(json['storedAt'] as String),
    );

Map<String, dynamic> _$$BlockchainBundle$ToJson(_$BlockchainBundle$ instance) => <String, dynamic>{
      'bundle': instance.bundle,
      'storedAt': instance.storedAt.toIso8601String(),
    };

_$BlockchainVault$ _$$BlockchainVault$FromJson(Map<String, dynamic> json) => _$BlockchainVault$(
      bundles: (json['bundles'] as List<dynamic>).map((e) => Bundle.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$BlockchainVault$ToJson(_$BlockchainVault$ instance) => <String, dynamic>{
      'bundles': instance.bundles,
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

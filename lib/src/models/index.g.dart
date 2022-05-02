// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      pending: (json['pending'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? const <String>{},
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      selectedDrawerPage: $enumDecodeNullable(_$DrawerPageEnumMap, json['selectedDrawerPage']) ?? DrawerPage.home,
      showAccountManagementOptions: json['showAccountManagementOptions'] as bool? ?? false,
      bundle: json['bundle'] == null ? const Bundle() : Bundle.fromJson(json['bundle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'pending': instance.pending.toList(),
      'user': instance.user,
      'selectedDrawerPage': _$DrawerPageEnumMap[instance.selectedDrawerPage],
      'showAccountManagementOptions': instance.showAccountManagementOptions,
      'bundle': instance.bundle,
    };

const _$DrawerPageEnumMap = {
  DrawerPage.home: 'home',
  DrawerPage.passwords: 'passwords',
  DrawerPage.addresses: 'addresses',
};

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
    };

_$Password$ _$$Password$FromJson(Map<String, dynamic> json) => _$Password$(
      title: json['title'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      note: json['note'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$Password$ToJson(_$Password$ instance) => <String, dynamic>{
      'title': instance.title,
      'username': instance.username,
      'password': instance.password,
      'note': instance.note,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$Bundle$ _$$Bundle$FromJson(Map<String, dynamic> json) => _$Bundle$(
      passwords:
          (json['passwords'] as List<dynamic>?)?.map((e) => Password.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Password>[],
    );

Map<String, dynamic> _$$Bundle$ToJson(_$Bundle$ instance) => <String, dynamic>{
      'passwords': instance.passwords,
    };

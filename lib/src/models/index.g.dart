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
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'pending': instance.pending.toList(),
      'user': instance.user,
      'selectedDrawerPage': _$DrawerPageEnumMap[instance.selectedDrawerPage],
      'showAccountManagementOptions': instance.showAccountManagementOptions,
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

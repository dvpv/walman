// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  Set<String> get pending => throw _privateConstructorUsedError;
  AppUser? get user => throw _privateConstructorUsedError;
  DrawerPage get selectedDrawerPage => throw _privateConstructorUsedError;
  bool get showAccountManagementOptions => throw _privateConstructorUsedError;
  Bundle get bundle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {Set<String> pending,
      AppUser? user,
      DrawerPage selectedDrawerPage,
      bool showAccountManagementOptions,
      Bundle bundle});

  $AppUserCopyWith<$Res>? get user;
  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? pending = freezed,
    Object? user = freezed,
    Object? selectedDrawerPage = freezed,
    Object? showAccountManagementOptions = freezed,
    Object? bundle = freezed,
  }) {
    return _then(_value.copyWith(
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      selectedDrawerPage: selectedDrawerPage == freezed
          ? _value.selectedDrawerPage
          : selectedDrawerPage // ignore: cast_nullable_to_non_nullable
              as DrawerPage,
      showAccountManagementOptions: showAccountManagementOptions == freezed
          ? _value.showAccountManagementOptions
          : showAccountManagementOptions // ignore: cast_nullable_to_non_nullable
              as bool,
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
    ));
  }

  @override
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $BundleCopyWith<$Res> get bundle {
    return $BundleCopyWith<$Res>(_value.bundle, (value) {
      return _then(_value.copyWith(bundle: value));
    });
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) = _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {Set<String> pending,
      AppUser? user,
      DrawerPage selectedDrawerPage,
      bool showAccountManagementOptions,
      Bundle bundle});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res> implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? pending = freezed,
    Object? user = freezed,
    Object? selectedDrawerPage = freezed,
    Object? showAccountManagementOptions = freezed,
    Object? bundle = freezed,
  }) {
    return _then(AppState$(
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      selectedDrawerPage: selectedDrawerPage == freezed
          ? _value.selectedDrawerPage
          : selectedDrawerPage // ignore: cast_nullable_to_non_nullable
              as DrawerPage,
      showAccountManagementOptions: showAccountManagementOptions == freezed
          ? _value.showAccountManagementOptions
          : showAccountManagementOptions // ignore: cast_nullable_to_non_nullable
              as bool,
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {final Set<String> pending = const <String>{},
      this.user,
      this.selectedDrawerPage = DrawerPage.home,
      this.showAccountManagementOptions = false,
      this.bundle = const Bundle()})
      : _pending = pending;

  factory _$AppState$.fromJson(Map<String, dynamic> json) => _$$AppState$FromJson(json);

  final Set<String> _pending;
  @override
  @JsonKey()
  Set<String> get pending {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pending);
  }

  @override
  final AppUser? user;
  @override
  @JsonKey()
  final DrawerPage selectedDrawerPage;
  @override
  @JsonKey()
  final bool showAccountManagementOptions;
  @override
  @JsonKey()
  final Bundle bundle;

  @override
  String toString() {
    return 'AppState(pending: $pending, user: $user, selectedDrawerPage: $selectedDrawerPage, showAccountManagementOptions: $showAccountManagementOptions, bundle: $bundle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.pending, pending) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.selectedDrawerPage, selectedDrawerPage) &&
            const DeepCollectionEquality().equals(other.showAccountManagementOptions, showAccountManagementOptions) &&
            const DeepCollectionEquality().equals(other.bundle, bundle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pending),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(selectedDrawerPage),
      const DeepCollectionEquality().hash(showAccountManagementOptions),
      const DeepCollectionEquality().hash(bundle));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith => _$AppState$CopyWithImpl<AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(this);
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final Set<String> pending,
      final AppUser? user,
      final DrawerPage selectedDrawerPage,
      final bool showAccountManagementOptions,
      final Bundle bundle}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  Set<String> get pending => throw _privateConstructorUsedError;
  @override
  AppUser? get user => throw _privateConstructorUsedError;
  @override
  DrawerPage get selectedDrawerPage => throw _privateConstructorUsedError;
  @override
  bool get showAccountManagementOptions => throw _privateConstructorUsedError;
  @override
  Bundle get bundle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith => throw _privateConstructorUsedError;
}

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) = _$AppUserCopyWithImpl<$Res>;
  $Res call({String uid, String email, String username});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory $AppUser$CopyWith(AppUser$ value, $Res Function(AppUser$) then) = _$AppUser$CopyWithImpl<$Res>;
  @override
  $Res call({String uid, String email, String username});
}

/// @nodoc
class _$AppUser$CopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res> implements $AppUser$CopyWith<$Res> {
  _$AppUser$CopyWithImpl(AppUser$ _value, $Res Function(AppUser$) _then) : super(_value, (v) => _then(v as AppUser$));

  @override
  AppUser$ get _value => super._value as AppUser$;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(AppUser$(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$ implements AppUser$ {
  const _$AppUser$({required this.uid, required this.email, required this.username});

  factory _$AppUser$.fromJson(Map<String, dynamic> json) => _$$AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUser$ &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email), const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  $AppUser$CopyWith<AppUser$> get copyWith => _$AppUser$CopyWithImpl<AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(this);
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$({required final String uid, required final String email, required final String username}) =
      _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AppUser$CopyWith<AppUser$> get copyWith => throw _privateConstructorUsedError;
}

Password _$PasswordFromJson(Map<String, dynamic> json) {
  return Password$.fromJson(json);
}

/// @nodoc
mixin _$Password {
  String get title => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordCopyWith<Password> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCopyWith<$Res> {
  factory $PasswordCopyWith(Password value, $Res Function(Password) then) = _$PasswordCopyWithImpl<$Res>;
  $Res call({String title, String username, String password, String note, DateTime createdAt});
}

/// @nodoc
class _$PasswordCopyWithImpl<$Res> implements $PasswordCopyWith<$Res> {
  _$PasswordCopyWithImpl(this._value, this._then);

  final Password _value;
  // ignore: unused_field
  final $Res Function(Password) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class $Password$CopyWith<$Res> implements $PasswordCopyWith<$Res> {
  factory $Password$CopyWith(Password$ value, $Res Function(Password$) then) = _$Password$CopyWithImpl<$Res>;
  @override
  $Res call({String title, String username, String password, String note, DateTime createdAt});
}

/// @nodoc
class _$Password$CopyWithImpl<$Res> extends _$PasswordCopyWithImpl<$Res> implements $Password$CopyWith<$Res> {
  _$Password$CopyWithImpl(Password$ _value, $Res Function(Password$) _then)
      : super(_value, (v) => _then(v as Password$));

  @override
  Password$ get _value => super._value as Password$;

  @override
  $Res call({
    Object? title = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(Password$(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Password$ implements Password$ {
  const _$Password$(
      {required this.title,
      required this.username,
      required this.password,
      required this.note,
      required this.createdAt});

  factory _$Password$.fromJson(Map<String, dynamic> json) => _$$Password$FromJson(json);

  @override
  final String title;
  @override
  final String username;
  @override
  final String password;
  @override
  final String note;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Password(title: $title, username: $username, password: $password, note: $note, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Password$ &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  $Password$CopyWith<Password$> get copyWith => _$Password$CopyWithImpl<Password$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Password$ToJson(this);
  }
}

abstract class Password$ implements Password {
  const factory Password$(
      {required final String title,
      required final String username,
      required final String password,
      required final String note,
      required final DateTime createdAt}) = _$Password$;

  factory Password$.fromJson(Map<String, dynamic> json) = _$Password$.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $Password$CopyWith<Password$> get copyWith => throw _privateConstructorUsedError;
}

Bundle _$BundleFromJson(Map<String, dynamic> json) {
  return Bundle$.fromJson(json);
}

/// @nodoc
mixin _$Bundle {
  List<Password> get passwords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundleCopyWith<Bundle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleCopyWith<$Res> {
  factory $BundleCopyWith(Bundle value, $Res Function(Bundle) then) = _$BundleCopyWithImpl<$Res>;
  $Res call({List<Password> passwords});
}

/// @nodoc
class _$BundleCopyWithImpl<$Res> implements $BundleCopyWith<$Res> {
  _$BundleCopyWithImpl(this._value, this._then);

  final Bundle _value;
  // ignore: unused_field
  final $Res Function(Bundle) _then;

  @override
  $Res call({
    Object? passwords = freezed,
  }) {
    return _then(_value.copyWith(
      passwords: passwords == freezed
          ? _value.passwords
          : passwords // ignore: cast_nullable_to_non_nullable
              as List<Password>,
    ));
  }
}

/// @nodoc
abstract class $Bundle$CopyWith<$Res> implements $BundleCopyWith<$Res> {
  factory $Bundle$CopyWith(Bundle$ value, $Res Function(Bundle$) then) = _$Bundle$CopyWithImpl<$Res>;
  @override
  $Res call({List<Password> passwords});
}

/// @nodoc
class _$Bundle$CopyWithImpl<$Res> extends _$BundleCopyWithImpl<$Res> implements $Bundle$CopyWith<$Res> {
  _$Bundle$CopyWithImpl(Bundle$ _value, $Res Function(Bundle$) _then) : super(_value, (v) => _then(v as Bundle$));

  @override
  Bundle$ get _value => super._value as Bundle$;

  @override
  $Res call({
    Object? passwords = freezed,
  }) {
    return _then(Bundle$(
      passwords: passwords == freezed
          ? _value.passwords
          : passwords // ignore: cast_nullable_to_non_nullable
              as List<Password>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Bundle$ implements Bundle$ {
  const _$Bundle$({final List<Password> passwords = const <Password>[]}) : _passwords = passwords;

  factory _$Bundle$.fromJson(Map<String, dynamic> json) => _$$Bundle$FromJson(json);

  final List<Password> _passwords;
  @override
  @JsonKey()
  List<Password> get passwords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_passwords);
  }

  @override
  String toString() {
    return 'Bundle(passwords: $passwords)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Bundle$ &&
            const DeepCollectionEquality().equals(other.passwords, passwords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(passwords));

  @JsonKey(ignore: true)
  @override
  $Bundle$CopyWith<Bundle$> get copyWith => _$Bundle$CopyWithImpl<Bundle$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Bundle$ToJson(this);
  }
}

abstract class Bundle$ implements Bundle {
  const factory Bundle$({final List<Password> passwords}) = _$Bundle$;

  factory Bundle$.fromJson(Map<String, dynamic> json) = _$Bundle$.fromJson;

  @override
  List<Password> get passwords => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $Bundle$CopyWith<Bundle$> get copyWith => throw _privateConstructorUsedError;
}

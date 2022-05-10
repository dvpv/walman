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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address$.fromJson(json);
}

/// @nodoc
class _$AddressTearOff {
  const _$AddressTearOff();

  Address$ call() {
    return const Address$();
  }

  Address fromJson(Map<String, Object?> json) {
    return Address.fromJson(json);
  }
}

/// @nodoc
const $Address = _$AddressTearOff();

/// @nodoc
mixin _$Address {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) = _$AddressCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;
}

/// @nodoc
abstract class $Address$CopyWith<$Res> {
  factory $Address$CopyWith(Address$ value, $Res Function(Address$) then) = _$Address$CopyWithImpl<$Res>;
}

/// @nodoc
class _$Address$CopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res> implements $Address$CopyWith<$Res> {
  _$Address$CopyWithImpl(Address$ _value, $Res Function(Address$) _then) : super(_value, (v) => _then(v as Address$));

  @override
  Address$ get _value => super._value as Address$;
}

/// @nodoc
@JsonSerializable()
class _$Address$ implements Address$ {
  const _$Address$();

  factory _$Address$.fromJson(Map<String, dynamic> json) => _$$Address$FromJson(json);

  @override
  String toString() {
    return 'Address()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is Address$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$Address$ToJson(this);
  }
}

abstract class Address$ implements Address {
  const factory Address$() = _$Address$;

  factory Address$.fromJson(Map<String, dynamic> json) = _$Address$.fromJson;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call(
      {Set<String> pending = const <String>{},
      AppUser? user,
      AppPage selectedPage = AppPage.home,
      Bundle bundle = const Bundle(),
      DetailsState detailsState = const DetailsState(),
      CreateCodeState createCodeState = const CreateCodeState()}) {
    return AppState$(
      pending: pending,
      user: user,
      selectedPage: selectedPage,
      bundle: bundle,
      detailsState: detailsState,
      createCodeState: createCodeState,
    );
  }

  AppState fromJson(Map<String, Object?> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  Set<String> get pending => throw _privateConstructorUsedError;
  AppUser? get user => throw _privateConstructorUsedError;
  AppPage get selectedPage => throw _privateConstructorUsedError;
  Bundle get bundle => throw _privateConstructorUsedError;
  DetailsState get detailsState => throw _privateConstructorUsedError;
  CreateCodeState get createCodeState => throw _privateConstructorUsedError;

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
      AppPage selectedPage,
      Bundle bundle,
      DetailsState detailsState,
      CreateCodeState createCodeState});

  $AppUserCopyWith<$Res>? get user;
  $BundleCopyWith<$Res> get bundle;
  $DetailsStateCopyWith<$Res> get detailsState;
  $CreateCodeStateCopyWith<$Res> get createCodeState;
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
    Object? selectedPage = freezed,
    Object? bundle = freezed,
    Object? detailsState = freezed,
    Object? createCodeState = freezed,
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
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as AppPage,
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      detailsState: detailsState == freezed
          ? _value.detailsState
          : detailsState // ignore: cast_nullable_to_non_nullable
              as DetailsState,
      createCodeState: createCodeState == freezed
          ? _value.createCodeState
          : createCodeState // ignore: cast_nullable_to_non_nullable
              as CreateCodeState,
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

  @override
  $DetailsStateCopyWith<$Res> get detailsState {
    return $DetailsStateCopyWith<$Res>(_value.detailsState, (value) {
      return _then(_value.copyWith(detailsState: value));
    });
  }

  @override
  $CreateCodeStateCopyWith<$Res> get createCodeState {
    return $CreateCodeStateCopyWith<$Res>(_value.createCodeState, (value) {
      return _then(_value.copyWith(createCodeState: value));
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
      AppPage selectedPage,
      Bundle bundle,
      DetailsState detailsState,
      CreateCodeState createCodeState});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $BundleCopyWith<$Res> get bundle;
  @override
  $DetailsStateCopyWith<$Res> get detailsState;
  @override
  $CreateCodeStateCopyWith<$Res> get createCodeState;
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
    Object? selectedPage = freezed,
    Object? bundle = freezed,
    Object? detailsState = freezed,
    Object? createCodeState = freezed,
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
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as AppPage,
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      detailsState: detailsState == freezed
          ? _value.detailsState
          : detailsState // ignore: cast_nullable_to_non_nullable
              as DetailsState,
      createCodeState: createCodeState == freezed
          ? _value.createCodeState
          : createCodeState // ignore: cast_nullable_to_non_nullable
              as CreateCodeState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.pending = const <String>{},
      this.user,
      this.selectedPage = AppPage.home,
      this.bundle = const Bundle(),
      this.detailsState = const DetailsState(),
      this.createCodeState = const CreateCodeState()});

  factory _$AppState$.fromJson(Map<String, dynamic> json) => _$$AppState$FromJson(json);

  @JsonKey()
  @override
  final Set<String> pending;
  @override
  final AppUser? user;
  @JsonKey()
  @override
  final AppPage selectedPage;
  @JsonKey()
  @override
  final Bundle bundle;
  @JsonKey()
  @override
  final DetailsState detailsState;
  @JsonKey()
  @override
  final CreateCodeState createCodeState;

  @override
  String toString() {
    return 'AppState(pending: $pending, user: $user, selectedPage: $selectedPage, bundle: $bundle, detailsState: $detailsState, createCodeState: $createCodeState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.pending, pending) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.selectedPage, selectedPage) &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.detailsState, detailsState) &&
            const DeepCollectionEquality().equals(other.createCodeState, createCodeState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pending),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(selectedPage),
      const DeepCollectionEquality().hash(bundle),
      const DeepCollectionEquality().hash(detailsState),
      const DeepCollectionEquality().hash(createCodeState));

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
      {Set<String> pending,
      AppUser? user,
      AppPage selectedPage,
      Bundle bundle,
      DetailsState detailsState,
      CreateCodeState createCodeState}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  Set<String> get pending;
  @override
  AppUser? get user;
  @override
  AppPage get selectedPage;
  @override
  Bundle get bundle;
  @override
  DetailsState get detailsState;
  @override
  CreateCodeState get createCodeState;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith => throw _privateConstructorUsedError;
}

DetailsState _$DetailsStateFromJson(Map<String, dynamic> json) {
  return DetailsState$.fromJson(json);
}

/// @nodoc
class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

  DetailsState$ call({String selectedId = '', bool editing = false}) {
    return DetailsState$(
      selectedId: selectedId,
      editing: editing,
    );
  }

  DetailsState fromJson(Map<String, Object?> json) {
    return DetailsState.fromJson(json);
  }
}

/// @nodoc
const $DetailsState = _$DetailsStateTearOff();

/// @nodoc
mixin _$DetailsState {
  String get selectedId => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsStateCopyWith<DetailsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
  $Res call({String selectedId, bool editing});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;

  @override
  $Res call({
    Object? selectedId = freezed,
    Object? editing = freezed,
  }) {
    return _then(_value.copyWith(
      selectedId: selectedId == freezed
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String,
      editing: editing == freezed
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $DetailsState$CopyWith<$Res> implements $DetailsStateCopyWith<$Res> {
  factory $DetailsState$CopyWith(DetailsState$ value, $Res Function(DetailsState$) then) =
      _$DetailsState$CopyWithImpl<$Res>;
  @override
  $Res call({String selectedId, bool editing});
}

/// @nodoc
class _$DetailsState$CopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsState$CopyWith<$Res> {
  _$DetailsState$CopyWithImpl(DetailsState$ _value, $Res Function(DetailsState$) _then)
      : super(_value, (v) => _then(v as DetailsState$));

  @override
  DetailsState$ get _value => super._value as DetailsState$;

  @override
  $Res call({
    Object? selectedId = freezed,
    Object? editing = freezed,
  }) {
    return _then(DetailsState$(
      selectedId: selectedId == freezed
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String,
      editing: editing == freezed
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsState$ implements DetailsState$ {
  const _$DetailsState$({this.selectedId = '', this.editing = false});

  factory _$DetailsState$.fromJson(Map<String, dynamic> json) => _$$DetailsState$FromJson(json);

  @JsonKey()
  @override
  final String selectedId;
  @JsonKey()
  @override
  final bool editing;

  @override
  String toString() {
    return 'DetailsState(selectedId: $selectedId, editing: $editing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailsState$ &&
            const DeepCollectionEquality().equals(other.selectedId, selectedId) &&
            const DeepCollectionEquality().equals(other.editing, editing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedId), const DeepCollectionEquality().hash(editing));

  @JsonKey(ignore: true)
  @override
  $DetailsState$CopyWith<DetailsState$> get copyWith => _$DetailsState$CopyWithImpl<DetailsState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsState$ToJson(this);
  }
}

abstract class DetailsState$ implements DetailsState {
  const factory DetailsState$({String selectedId, bool editing}) = _$DetailsState$;

  factory DetailsState$.fromJson(Map<String, dynamic> json) = _$DetailsState$.fromJson;

  @override
  String get selectedId;
  @override
  bool get editing;
  @override
  @JsonKey(ignore: true)
  $DetailsState$CopyWith<DetailsState$> get copyWith => throw _privateConstructorUsedError;
}

CreateCodeState _$CreateCodeStateFromJson(Map<String, dynamic> json) {
  return CreateCodeState$.fromJson(json);
}

/// @nodoc
class _$CreateCodeStateTearOff {
  const _$CreateCodeStateTearOff();

  CreateCodeState$ call({Code? code}) {
    return CreateCodeState$(
      code: code,
    );
  }

  CreateCodeState fromJson(Map<String, Object?> json) {
    return CreateCodeState.fromJson(json);
  }
}

/// @nodoc
const $CreateCodeState = _$CreateCodeStateTearOff();

/// @nodoc
mixin _$CreateCodeState {
  Code? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCodeStateCopyWith<CreateCodeState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCodeStateCopyWith<$Res> {
  factory $CreateCodeStateCopyWith(CreateCodeState value, $Res Function(CreateCodeState) then) =
      _$CreateCodeStateCopyWithImpl<$Res>;
  $Res call({Code? code});

  $CodeCopyWith<$Res>? get code;
}

/// @nodoc
class _$CreateCodeStateCopyWithImpl<$Res> implements $CreateCodeStateCopyWith<$Res> {
  _$CreateCodeStateCopyWithImpl(this._value, this._then);

  final CreateCodeState _value;
  // ignore: unused_field
  final $Res Function(CreateCodeState) _then;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code?,
    ));
  }

  @override
  $CodeCopyWith<$Res>? get code {
    if (_value.code == null) {
      return null;
    }

    return $CodeCopyWith<$Res>(_value.code!, (value) {
      return _then(_value.copyWith(code: value));
    });
  }
}

/// @nodoc
abstract class $CreateCodeState$CopyWith<$Res> implements $CreateCodeStateCopyWith<$Res> {
  factory $CreateCodeState$CopyWith(CreateCodeState$ value, $Res Function(CreateCodeState$) then) =
      _$CreateCodeState$CopyWithImpl<$Res>;
  @override
  $Res call({Code? code});

  @override
  $CodeCopyWith<$Res>? get code;
}

/// @nodoc
class _$CreateCodeState$CopyWithImpl<$Res> extends _$CreateCodeStateCopyWithImpl<$Res>
    implements $CreateCodeState$CopyWith<$Res> {
  _$CreateCodeState$CopyWithImpl(CreateCodeState$ _value, $Res Function(CreateCodeState$) _then)
      : super(_value, (v) => _then(v as CreateCodeState$));

  @override
  CreateCodeState$ get _value => super._value as CreateCodeState$;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(CreateCodeState$(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCodeState$ implements CreateCodeState$ {
  const _$CreateCodeState$({this.code});

  factory _$CreateCodeState$.fromJson(Map<String, dynamic> json) => _$$CreateCodeState$FromJson(json);

  @override
  final Code? code;

  @override
  String toString() {
    return 'CreateCodeState(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCodeState$ &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  $CreateCodeState$CopyWith<CreateCodeState$> get copyWith =>
      _$CreateCodeState$CopyWithImpl<CreateCodeState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCodeState$ToJson(this);
  }
}

abstract class CreateCodeState$ implements CreateCodeState {
  const factory CreateCodeState$({Code? code}) = _$CreateCodeState$;

  factory CreateCodeState$.fromJson(Map<String, dynamic> json) = _$CreateCodeState$.fromJson;

  @override
  Code? get code;
  @override
  @JsonKey(ignore: true)
  $CreateCodeState$CopyWith<CreateCodeState$> get copyWith => throw _privateConstructorUsedError;
}

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

  AppUser$ call({required String uid, required String email, required String username, String? masterKey}) {
    return AppUser$(
      uid: uid,
      email: email,
      username: username,
      masterKey: masterKey,
    );
  }

  AppUser fromJson(Map<String, Object?> json) {
    return AppUser.fromJson(json);
  }
}

/// @nodoc
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get masterKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) = _$AppUserCopyWithImpl<$Res>;
  $Res call({String uid, String email, String username, String? masterKey});
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
    Object? masterKey = freezed,
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
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory $AppUser$CopyWith(AppUser$ value, $Res Function(AppUser$) then) = _$AppUser$CopyWithImpl<$Res>;
  @override
  $Res call({String uid, String email, String username, String? masterKey});
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
    Object? masterKey = freezed,
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
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$ implements AppUser$ {
  const _$AppUser$({required this.uid, required this.email, required this.username, this.masterKey});

  factory _$AppUser$.fromJson(Map<String, dynamic> json) => _$$AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;
  @override
  final String? masterKey;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, username: $username, masterKey: $masterKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUser$ &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(masterKey));

  @JsonKey(ignore: true)
  @override
  $AppUser$CopyWith<AppUser$> get copyWith => _$AppUser$CopyWithImpl<AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(this);
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$({required String uid, required String email, required String username, String? masterKey}) =
      _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get username;
  @override
  String? get masterKey;
  @override
  @JsonKey(ignore: true)
  $AppUser$CopyWith<AppUser$> get copyWith => throw _privateConstructorUsedError;
}

Bundle _$BundleFromJson(Map<String, dynamic> json) {
  return Bundle$.fromJson(json);
}

/// @nodoc
class _$BundleTearOff {
  const _$BundleTearOff();

  Bundle$ call({List<Password> passwords = const <Password>[], List<Code> codes = const <Code>[]}) {
    return Bundle$(
      passwords: passwords,
      codes: codes,
    );
  }

  Bundle fromJson(Map<String, Object?> json) {
    return Bundle.fromJson(json);
  }
}

/// @nodoc
const $Bundle = _$BundleTearOff();

/// @nodoc
mixin _$Bundle {
  List<Password> get passwords => throw _privateConstructorUsedError;
  List<Code> get codes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundleCopyWith<Bundle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleCopyWith<$Res> {
  factory $BundleCopyWith(Bundle value, $Res Function(Bundle) then) = _$BundleCopyWithImpl<$Res>;
  $Res call({List<Password> passwords, List<Code> codes});
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
    Object? codes = freezed,
  }) {
    return _then(_value.copyWith(
      passwords: passwords == freezed
          ? _value.passwords
          : passwords // ignore: cast_nullable_to_non_nullable
              as List<Password>,
      codes: codes == freezed
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<Code>,
    ));
  }
}

/// @nodoc
abstract class $Bundle$CopyWith<$Res> implements $BundleCopyWith<$Res> {
  factory $Bundle$CopyWith(Bundle$ value, $Res Function(Bundle$) then) = _$Bundle$CopyWithImpl<$Res>;
  @override
  $Res call({List<Password> passwords, List<Code> codes});
}

/// @nodoc
class _$Bundle$CopyWithImpl<$Res> extends _$BundleCopyWithImpl<$Res> implements $Bundle$CopyWith<$Res> {
  _$Bundle$CopyWithImpl(Bundle$ _value, $Res Function(Bundle$) _then) : super(_value, (v) => _then(v as Bundle$));

  @override
  Bundle$ get _value => super._value as Bundle$;

  @override
  $Res call({
    Object? passwords = freezed,
    Object? codes = freezed,
  }) {
    return _then(Bundle$(
      passwords: passwords == freezed
          ? _value.passwords
          : passwords // ignore: cast_nullable_to_non_nullable
              as List<Password>,
      codes: codes == freezed
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<Code>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Bundle$ implements Bundle$ {
  const _$Bundle$({this.passwords = const <Password>[], this.codes = const <Code>[]});

  factory _$Bundle$.fromJson(Map<String, dynamic> json) => _$$Bundle$FromJson(json);

  @JsonKey()
  @override
  final List<Password> passwords;
  @JsonKey()
  @override
  final List<Code> codes;

  @override
  String toString() {
    return 'Bundle(passwords: $passwords, codes: $codes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Bundle$ &&
            const DeepCollectionEquality().equals(other.passwords, passwords) &&
            const DeepCollectionEquality().equals(other.codes, codes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwords), const DeepCollectionEquality().hash(codes));

  @JsonKey(ignore: true)
  @override
  $Bundle$CopyWith<Bundle$> get copyWith => _$Bundle$CopyWithImpl<Bundle$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Bundle$ToJson(this);
  }
}

abstract class Bundle$ implements Bundle {
  const factory Bundle$({List<Password> passwords, List<Code> codes}) = _$Bundle$;

  factory Bundle$.fromJson(Map<String, dynamic> json) = _$Bundle$.fromJson;

  @override
  List<Password> get passwords;
  @override
  List<Code> get codes;
  @override
  @JsonKey(ignore: true)
  $Bundle$CopyWith<Bundle$> get copyWith => throw _privateConstructorUsedError;
}

Password _$PasswordFromJson(Map<String, dynamic> json) {
  return Password$.fromJson(json);
}

/// @nodoc
class _$PasswordTearOff {
  const _$PasswordTearOff();

  Password$ call(
      {required String id,
      required String title,
      required String username,
      required String password,
      required String note,
      required DateTime createdAt,
      required DateTime lastAccess,
      int timesAccessed = 0}) {
    return Password$(
      id: id,
      title: title,
      username: username,
      password: password,
      note: note,
      createdAt: createdAt,
      lastAccess: lastAccess,
      timesAccessed: timesAccessed,
    );
  }

  Password fromJson(Map<String, Object?> json) {
    return Password.fromJson(json);
  }
}

/// @nodoc
const $Password = _$PasswordTearOff();

/// @nodoc
mixin _$Password {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastAccess => throw _privateConstructorUsedError;
  int get timesAccessed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordCopyWith<Password> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCopyWith<$Res> {
  factory $PasswordCopyWith(Password value, $Res Function(Password) then) = _$PasswordCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String username,
      String password,
      String note,
      DateTime createdAt,
      DateTime lastAccess,
      int timesAccessed});
}

/// @nodoc
class _$PasswordCopyWithImpl<$Res> implements $PasswordCopyWith<$Res> {
  _$PasswordCopyWithImpl(this._value, this._then);

  final Password _value;
  // ignore: unused_field
  final $Res Function(Password) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
    Object? lastAccess = freezed,
    Object? timesAccessed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      lastAccess: lastAccess == freezed
          ? _value.lastAccess
          : lastAccess // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timesAccessed: timesAccessed == freezed
          ? _value.timesAccessed
          : timesAccessed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $Password$CopyWith<$Res> implements $PasswordCopyWith<$Res> {
  factory $Password$CopyWith(Password$ value, $Res Function(Password$) then) = _$Password$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String username,
      String password,
      String note,
      DateTime createdAt,
      DateTime lastAccess,
      int timesAccessed});
}

/// @nodoc
class _$Password$CopyWithImpl<$Res> extends _$PasswordCopyWithImpl<$Res> implements $Password$CopyWith<$Res> {
  _$Password$CopyWithImpl(Password$ _value, $Res Function(Password$) _then)
      : super(_value, (v) => _then(v as Password$));

  @override
  Password$ get _value => super._value as Password$;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
    Object? lastAccess = freezed,
    Object? timesAccessed = freezed,
  }) {
    return _then(Password$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      lastAccess: lastAccess == freezed
          ? _value.lastAccess
          : lastAccess // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timesAccessed: timesAccessed == freezed
          ? _value.timesAccessed
          : timesAccessed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Password$ implements Password$ {
  _$Password$(
      {required this.id,
      required this.title,
      required this.username,
      required this.password,
      required this.note,
      required this.createdAt,
      required this.lastAccess,
      this.timesAccessed = 0});

  factory _$Password$.fromJson(Map<String, dynamic> json) => _$$Password$FromJson(json);

  @override
  final String id;
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
  final DateTime lastAccess;
  @JsonKey()
  @override
  final int timesAccessed;

  @override
  String toString() {
    return 'Password(id: $id, title: $title, username: $username, password: $password, note: $note, createdAt: $createdAt, lastAccess: $lastAccess, timesAccessed: $timesAccessed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Password$ &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.lastAccess, lastAccess) &&
            const DeepCollectionEquality().equals(other.timesAccessed, timesAccessed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(lastAccess),
      const DeepCollectionEquality().hash(timesAccessed));

  @JsonKey(ignore: true)
  @override
  $Password$CopyWith<Password$> get copyWith => _$Password$CopyWithImpl<Password$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Password$ToJson(this);
  }
}

abstract class Password$ implements Password {
  factory Password$(
      {required String id,
      required String title,
      required String username,
      required String password,
      required String note,
      required DateTime createdAt,
      required DateTime lastAccess,
      int timesAccessed}) = _$Password$;

  factory Password$.fromJson(Map<String, dynamic> json) = _$Password$.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get username;
  @override
  String get password;
  @override
  String get note;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastAccess;
  @override
  int get timesAccessed;
  @override
  @JsonKey(ignore: true)
  $Password$CopyWith<Password$> get copyWith => throw _privateConstructorUsedError;
}

Code _$CodeFromJson(Map<String, dynamic> json) {
  return Code$.fromJson(json);
}

/// @nodoc
class _$CodeTearOff {
  const _$CodeTearOff();

  Code$ call(
      {required String id,
      String title = '',
      required String data,
      required BarcodeFormat format,
      String note = '',
      required DateTime createdAt,
      required DateTime lastAccess,
      int timesAccessed = 0}) {
    return Code$(
      id: id,
      title: title,
      data: data,
      format: format,
      note: note,
      createdAt: createdAt,
      lastAccess: lastAccess,
      timesAccessed: timesAccessed,
    );
  }

  Code fromJson(Map<String, Object?> json) {
    return Code.fromJson(json);
  }
}

/// @nodoc
const $Code = _$CodeTearOff();

/// @nodoc
mixin _$Code {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  BarcodeFormat get format => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastAccess => throw _privateConstructorUsedError;
  int get timesAccessed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeCopyWith<Code> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeCopyWith<$Res> {
  factory $CodeCopyWith(Code value, $Res Function(Code) then) = _$CodeCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String data,
      BarcodeFormat format,
      String note,
      DateTime createdAt,
      DateTime lastAccess,
      int timesAccessed});
}

/// @nodoc
class _$CodeCopyWithImpl<$Res> implements $CodeCopyWith<$Res> {
  _$CodeCopyWithImpl(this._value, this._then);

  final Code _value;
  // ignore: unused_field
  final $Res Function(Code) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? data = freezed,
    Object? format = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
    Object? lastAccess = freezed,
    Object? timesAccessed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as BarcodeFormat,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastAccess: lastAccess == freezed
          ? _value.lastAccess
          : lastAccess // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timesAccessed: timesAccessed == freezed
          ? _value.timesAccessed
          : timesAccessed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $Code$CopyWith<$Res> implements $CodeCopyWith<$Res> {
  factory $Code$CopyWith(Code$ value, $Res Function(Code$) then) = _$Code$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String data,
      BarcodeFormat format,
      String note,
      DateTime createdAt,
      DateTime lastAccess,
      int timesAccessed});
}

/// @nodoc
class _$Code$CopyWithImpl<$Res> extends _$CodeCopyWithImpl<$Res> implements $Code$CopyWith<$Res> {
  _$Code$CopyWithImpl(Code$ _value, $Res Function(Code$) _then) : super(_value, (v) => _then(v as Code$));

  @override
  Code$ get _value => super._value as Code$;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? data = freezed,
    Object? format = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
    Object? lastAccess = freezed,
    Object? timesAccessed = freezed,
  }) {
    return _then(Code$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as BarcodeFormat,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastAccess: lastAccess == freezed
          ? _value.lastAccess
          : lastAccess // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timesAccessed: timesAccessed == freezed
          ? _value.timesAccessed
          : timesAccessed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Code$ implements Code$ {
  const _$Code$(
      {required this.id,
      this.title = '',
      required this.data,
      required this.format,
      this.note = '',
      required this.createdAt,
      required this.lastAccess,
      this.timesAccessed = 0});

  factory _$Code$.fromJson(Map<String, dynamic> json) => _$$Code$FromJson(json);

  @override
  final String id;
  @JsonKey()
  @override
  final String title;
  @override
  final String data;
  @override
  final BarcodeFormat format;
  @JsonKey()
  @override
  final String note;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastAccess;
  @JsonKey()
  @override
  final int timesAccessed;

  @override
  String toString() {
    return 'Code(id: $id, title: $title, data: $data, format: $format, note: $note, createdAt: $createdAt, lastAccess: $lastAccess, timesAccessed: $timesAccessed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Code$ &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.lastAccess, lastAccess) &&
            const DeepCollectionEquality().equals(other.timesAccessed, timesAccessed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(format),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(lastAccess),
      const DeepCollectionEquality().hash(timesAccessed));

  @JsonKey(ignore: true)
  @override
  $Code$CopyWith<Code$> get copyWith => _$Code$CopyWithImpl<Code$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Code$ToJson(this);
  }
}

abstract class Code$ implements Code {
  const factory Code$(
      {required String id,
      String title,
      required String data,
      required BarcodeFormat format,
      String note,
      required DateTime createdAt,
      required DateTime lastAccess,
      int timesAccessed}) = _$Code$;

  factory Code$.fromJson(Map<String, dynamic> json) = _$Code$.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get data;
  @override
  BarcodeFormat get format;
  @override
  String get note;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastAccess;
  @override
  int get timesAccessed;
  @override
  @JsonKey(ignore: true)
  $Code$CopyWith<Code$> get copyWith => throw _privateConstructorUsedError;
}

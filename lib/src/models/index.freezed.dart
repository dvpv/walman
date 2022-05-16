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

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address$.fromJson(json);
}

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
abstract class _$$Address$CopyWith<$Res> {
  factory _$$Address$CopyWith(_$Address$ value, $Res Function(_$Address$) then) = __$$Address$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$Address$CopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res> implements _$$Address$CopyWith<$Res> {
  __$$Address$CopyWithImpl(_$Address$ _value, $Res Function(_$Address$) _then)
      : super(_value, (v) => _then(v as _$Address$));

  @override
  _$Address$ get _value => super._value as _$Address$;
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$Address$);
  }

  @JsonKey(ignore: true)
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
mixin _$AppState {
  Set<String> get pending => throw _privateConstructorUsedError;
  AppUser? get user => throw _privateConstructorUsedError;
  AppPage get selectedPage => throw _privateConstructorUsedError;
  Bundle get bundle => throw _privateConstructorUsedError;
  DetailsState get detailsState => throw _privateConstructorUsedError;
  CreateCodeState get createCodeState => throw _privateConstructorUsedError;
  UIState get uiState => throw _privateConstructorUsedError;

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
      CreateCodeState createCodeState,
      UIState uiState});

  $AppUserCopyWith<$Res>? get user;
  $BundleCopyWith<$Res> get bundle;
  $DetailsStateCopyWith<$Res> get detailsState;
  $CreateCodeStateCopyWith<$Res> get createCodeState;
  $UIStateCopyWith<$Res> get uiState;
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
    Object? uiState = freezed,
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
      uiState: uiState == freezed
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UIState,
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

  @override
  $UIStateCopyWith<$Res> get uiState {
    return $UIStateCopyWith<$Res>(_value.uiState, (value) {
      return _then(_value.copyWith(uiState: value));
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(_$AppState$ value, $Res Function(_$AppState$) then) = __$$AppState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {Set<String> pending,
      AppUser? user,
      AppPage selectedPage,
      Bundle bundle,
      DetailsState detailsState,
      CreateCodeState createCodeState,
      UIState uiState});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $BundleCopyWith<$Res> get bundle;
  @override
  $DetailsStateCopyWith<$Res> get detailsState;
  @override
  $CreateCodeStateCopyWith<$Res> get createCodeState;
  @override
  $UIStateCopyWith<$Res> get uiState;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res> implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(_$AppState$ _value, $Res Function(_$AppState$) _then)
      : super(_value, (v) => _then(v as _$AppState$));

  @override
  _$AppState$ get _value => super._value as _$AppState$;

  @override
  $Res call({
    Object? pending = freezed,
    Object? user = freezed,
    Object? selectedPage = freezed,
    Object? bundle = freezed,
    Object? detailsState = freezed,
    Object? createCodeState = freezed,
    Object? uiState = freezed,
  }) {
    return _then(_$AppState$(
      pending: pending == freezed
          ? _value._pending
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
      uiState: uiState == freezed
          ? _value.uiState
          : uiState // ignore: cast_nullable_to_non_nullable
              as UIState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {final Set<String> pending = const <String>{},
      this.user,
      this.selectedPage = AppPage.home,
      this.bundle = const Bundle(),
      this.detailsState = const DetailsState(),
      this.createCodeState = const CreateCodeState(),
      this.uiState = const UIState()})
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
  final AppPage selectedPage;
  @override
  @JsonKey()
  final Bundle bundle;
  @override
  @JsonKey()
  final DetailsState detailsState;
  @override
  @JsonKey()
  final CreateCodeState createCodeState;
  @override
  @JsonKey()
  final UIState uiState;

  @override
  String toString() {
    return 'AppState(pending: $pending, user: $user, selectedPage: $selectedPage, bundle: $bundle, detailsState: $detailsState, createCodeState: $createCodeState, uiState: $uiState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            const DeepCollectionEquality().equals(other._pending, _pending) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.selectedPage, selectedPage) &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.detailsState, detailsState) &&
            const DeepCollectionEquality().equals(other.createCodeState, createCodeState) &&
            const DeepCollectionEquality().equals(other.uiState, uiState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pending),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(selectedPage),
      const DeepCollectionEquality().hash(bundle),
      const DeepCollectionEquality().hash(detailsState),
      const DeepCollectionEquality().hash(createCodeState),
      const DeepCollectionEquality().hash(uiState));

  @JsonKey(ignore: true)
  @override
  _$$AppState$CopyWith<_$AppState$> get copyWith => __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(this);
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final Set<String> pending,
      final AppUser? user,
      final AppPage selectedPage,
      final Bundle bundle,
      final DetailsState detailsState,
      final CreateCodeState createCodeState,
      final UIState uiState}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  Set<String> get pending => throw _privateConstructorUsedError;
  @override
  AppUser? get user => throw _privateConstructorUsedError;
  @override
  AppPage get selectedPage => throw _privateConstructorUsedError;
  @override
  Bundle get bundle => throw _privateConstructorUsedError;
  @override
  DetailsState get detailsState => throw _privateConstructorUsedError;
  @override
  CreateCodeState get createCodeState => throw _privateConstructorUsedError;
  @override
  UIState get uiState => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith => throw _privateConstructorUsedError;
}

DetailsState _$DetailsStateFromJson(Map<String, dynamic> json) {
  return DetailsState$.fromJson(json);
}

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
abstract class _$$DetailsState$CopyWith<$Res> implements $DetailsStateCopyWith<$Res> {
  factory _$$DetailsState$CopyWith(_$DetailsState$ value, $Res Function(_$DetailsState$) then) =
      __$$DetailsState$CopyWithImpl<$Res>;
  @override
  $Res call({String selectedId, bool editing});
}

/// @nodoc
class __$$DetailsState$CopyWithImpl<$Res> extends _$DetailsStateCopyWithImpl<$Res>
    implements _$$DetailsState$CopyWith<$Res> {
  __$$DetailsState$CopyWithImpl(_$DetailsState$ _value, $Res Function(_$DetailsState$) _then)
      : super(_value, (v) => _then(v as _$DetailsState$));

  @override
  _$DetailsState$ get _value => super._value as _$DetailsState$;

  @override
  $Res call({
    Object? selectedId = freezed,
    Object? editing = freezed,
  }) {
    return _then(_$DetailsState$(
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

  @override
  @JsonKey()
  final String selectedId;
  @override
  @JsonKey()
  final bool editing;

  @override
  String toString() {
    return 'DetailsState(selectedId: $selectedId, editing: $editing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsState$ &&
            const DeepCollectionEquality().equals(other.selectedId, selectedId) &&
            const DeepCollectionEquality().equals(other.editing, editing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedId), const DeepCollectionEquality().hash(editing));

  @JsonKey(ignore: true)
  @override
  _$$DetailsState$CopyWith<_$DetailsState$> get copyWith =>
      __$$DetailsState$CopyWithImpl<_$DetailsState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsState$ToJson(this);
  }
}

abstract class DetailsState$ implements DetailsState {
  const factory DetailsState$({final String selectedId, final bool editing}) = _$DetailsState$;

  factory DetailsState$.fromJson(Map<String, dynamic> json) = _$DetailsState$.fromJson;

  @override
  String get selectedId => throw _privateConstructorUsedError;
  @override
  bool get editing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DetailsState$CopyWith<_$DetailsState$> get copyWith => throw _privateConstructorUsedError;
}

CreateCodeState _$CreateCodeStateFromJson(Map<String, dynamic> json) {
  return CreateCodeState$.fromJson(json);
}

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
abstract class _$$CreateCodeState$CopyWith<$Res> implements $CreateCodeStateCopyWith<$Res> {
  factory _$$CreateCodeState$CopyWith(_$CreateCodeState$ value, $Res Function(_$CreateCodeState$) then) =
      __$$CreateCodeState$CopyWithImpl<$Res>;
  @override
  $Res call({Code? code});

  @override
  $CodeCopyWith<$Res>? get code;
}

/// @nodoc
class __$$CreateCodeState$CopyWithImpl<$Res> extends _$CreateCodeStateCopyWithImpl<$Res>
    implements _$$CreateCodeState$CopyWith<$Res> {
  __$$CreateCodeState$CopyWithImpl(_$CreateCodeState$ _value, $Res Function(_$CreateCodeState$) _then)
      : super(_value, (v) => _then(v as _$CreateCodeState$));

  @override
  _$CreateCodeState$ get _value => super._value as _$CreateCodeState$;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$CreateCodeState$(
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
            other is _$CreateCodeState$ &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$CreateCodeState$CopyWith<_$CreateCodeState$> get copyWith =>
      __$$CreateCodeState$CopyWithImpl<_$CreateCodeState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCodeState$ToJson(this);
  }
}

abstract class CreateCodeState$ implements CreateCodeState {
  const factory CreateCodeState$({final Code? code}) = _$CreateCodeState$;

  factory CreateCodeState$.fromJson(Map<String, dynamic> json) = _$CreateCodeState$.fromJson;

  @override
  Code? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CreateCodeState$CopyWith<_$CreateCodeState$> get copyWith => throw _privateConstructorUsedError;
}

UIState _$UIStateFromJson(Map<String, dynamic> json) {
  return UIState$.fromJson(json);
}

/// @nodoc
mixin _$UIState {
  bool get showPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UIStateCopyWith<UIState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIStateCopyWith<$Res> {
  factory $UIStateCopyWith(UIState value, $Res Function(UIState) then) = _$UIStateCopyWithImpl<$Res>;
  $Res call({bool showPassword});
}

/// @nodoc
class _$UIStateCopyWithImpl<$Res> implements $UIStateCopyWith<$Res> {
  _$UIStateCopyWithImpl(this._value, this._then);

  final UIState _value;
  // ignore: unused_field
  final $Res Function(UIState) _then;

  @override
  $Res call({
    Object? showPassword = freezed,
  }) {
    return _then(_value.copyWith(
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$UIState$CopyWith<$Res> implements $UIStateCopyWith<$Res> {
  factory _$$UIState$CopyWith(_$UIState$ value, $Res Function(_$UIState$) then) = __$$UIState$CopyWithImpl<$Res>;
  @override
  $Res call({bool showPassword});
}

/// @nodoc
class __$$UIState$CopyWithImpl<$Res> extends _$UIStateCopyWithImpl<$Res> implements _$$UIState$CopyWith<$Res> {
  __$$UIState$CopyWithImpl(_$UIState$ _value, $Res Function(_$UIState$) _then)
      : super(_value, (v) => _then(v as _$UIState$));

  @override
  _$UIState$ get _value => super._value as _$UIState$;

  @override
  $Res call({
    Object? showPassword = freezed,
  }) {
    return _then(_$UIState$(
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UIState$ implements UIState$ {
  const _$UIState$({this.showPassword = false});

  factory _$UIState$.fromJson(Map<String, dynamic> json) => _$$UIState$FromJson(json);

  @override
  @JsonKey()
  final bool showPassword;

  @override
  String toString() {
    return 'UIState(showPassword: $showPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIState$ &&
            const DeepCollectionEquality().equals(other.showPassword, showPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(showPassword));

  @JsonKey(ignore: true)
  @override
  _$$UIState$CopyWith<_$UIState$> get copyWith => __$$UIState$CopyWithImpl<_$UIState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UIState$ToJson(this);
  }
}

abstract class UIState$ implements UIState {
  const factory UIState$({final bool showPassword}) = _$UIState$;

  factory UIState$.fromJson(Map<String, dynamic> json) = _$UIState$.fromJson;

  @override
  bool get showPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UIState$CopyWith<_$UIState$> get copyWith => throw _privateConstructorUsedError;
}

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

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
abstract class _$$AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUser$CopyWith(_$AppUser$ value, $Res Function(_$AppUser$) then) = __$$AppUser$CopyWithImpl<$Res>;
  @override
  $Res call({String uid, String email, String username, String? masterKey});
}

/// @nodoc
class __$$AppUser$CopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res> implements _$$AppUser$CopyWith<$Res> {
  __$$AppUser$CopyWithImpl(_$AppUser$ _value, $Res Function(_$AppUser$) _then)
      : super(_value, (v) => _then(v as _$AppUser$));

  @override
  _$AppUser$ get _value => super._value as _$AppUser$;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? masterKey = freezed,
  }) {
    return _then(_$AppUser$(
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
            other is _$AppUser$ &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(masterKey));

  @JsonKey(ignore: true)
  @override
  _$$AppUser$CopyWith<_$AppUser$> get copyWith => __$$AppUser$CopyWithImpl<_$AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(this);
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required final String uid,
      required final String email,
      required final String username,
      final String? masterKey}) = _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String? get masterKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$AppUser$CopyWith<_$AppUser$> get copyWith => throw _privateConstructorUsedError;
}

Bundle _$BundleFromJson(Map<String, dynamic> json) {
  return Bundle$.fromJson(json);
}

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
abstract class _$$Bundle$CopyWith<$Res> implements $BundleCopyWith<$Res> {
  factory _$$Bundle$CopyWith(_$Bundle$ value, $Res Function(_$Bundle$) then) = __$$Bundle$CopyWithImpl<$Res>;
  @override
  $Res call({List<Password> passwords, List<Code> codes});
}

/// @nodoc
class __$$Bundle$CopyWithImpl<$Res> extends _$BundleCopyWithImpl<$Res> implements _$$Bundle$CopyWith<$Res> {
  __$$Bundle$CopyWithImpl(_$Bundle$ _value, $Res Function(_$Bundle$) _then)
      : super(_value, (v) => _then(v as _$Bundle$));

  @override
  _$Bundle$ get _value => super._value as _$Bundle$;

  @override
  $Res call({
    Object? passwords = freezed,
    Object? codes = freezed,
  }) {
    return _then(_$Bundle$(
      passwords: passwords == freezed
          ? _value._passwords
          : passwords // ignore: cast_nullable_to_non_nullable
              as List<Password>,
      codes: codes == freezed
          ? _value._codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<Code>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Bundle$ implements Bundle$ {
  const _$Bundle$({final List<Password> passwords = const <Password>[], final List<Code> codes = const <Code>[]})
      : _passwords = passwords,
        _codes = codes;

  factory _$Bundle$.fromJson(Map<String, dynamic> json) => _$$Bundle$FromJson(json);

  final List<Password> _passwords;
  @override
  @JsonKey()
  List<Password> get passwords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_passwords);
  }

  final List<Code> _codes;
  @override
  @JsonKey()
  List<Code> get codes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_codes);
  }

  @override
  String toString() {
    return 'Bundle(passwords: $passwords, codes: $codes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Bundle$ &&
            const DeepCollectionEquality().equals(other._passwords, _passwords) &&
            const DeepCollectionEquality().equals(other._codes, _codes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_passwords), const DeepCollectionEquality().hash(_codes));

  @JsonKey(ignore: true)
  @override
  _$$Bundle$CopyWith<_$Bundle$> get copyWith => __$$Bundle$CopyWithImpl<_$Bundle$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Bundle$ToJson(this);
  }
}

abstract class Bundle$ implements Bundle {
  const factory Bundle$({final List<Password> passwords, final List<Code> codes}) = _$Bundle$;

  factory Bundle$.fromJson(Map<String, dynamic> json) = _$Bundle$.fromJson;

  @override
  List<Password> get passwords => throw _privateConstructorUsedError;
  @override
  List<Code> get codes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$Bundle$CopyWith<_$Bundle$> get copyWith => throw _privateConstructorUsedError;
}

Password _$PasswordFromJson(Map<String, dynamic> json) {
  return Password$.fromJson(json);
}

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
abstract class _$$Password$CopyWith<$Res> implements $PasswordCopyWith<$Res> {
  factory _$$Password$CopyWith(_$Password$ value, $Res Function(_$Password$) then) = __$$Password$CopyWithImpl<$Res>;
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
class __$$Password$CopyWithImpl<$Res> extends _$PasswordCopyWithImpl<$Res> implements _$$Password$CopyWith<$Res> {
  __$$Password$CopyWithImpl(_$Password$ _value, $Res Function(_$Password$) _then)
      : super(_value, (v) => _then(v as _$Password$));

  @override
  _$Password$ get _value => super._value as _$Password$;

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
    return _then(_$Password$(
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
  @override
  @JsonKey()
  final int timesAccessed;

  @override
  String toString() {
    return 'Password(id: $id, title: $title, username: $username, password: $password, note: $note, createdAt: $createdAt, lastAccess: $lastAccess, timesAccessed: $timesAccessed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Password$ &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.lastAccess, lastAccess) &&
            const DeepCollectionEquality().equals(other.timesAccessed, timesAccessed));
  }

  @JsonKey(ignore: true)
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
  _$$Password$CopyWith<_$Password$> get copyWith => __$$Password$CopyWithImpl<_$Password$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Password$ToJson(this);
  }
}

abstract class Password$ implements Password {
  factory Password$(
      {required final String id,
      required final String title,
      required final String username,
      required final String password,
      required final String note,
      required final DateTime createdAt,
      required final DateTime lastAccess,
      final int timesAccessed}) = _$Password$;

  factory Password$.fromJson(Map<String, dynamic> json) = _$Password$.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
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
  DateTime get lastAccess => throw _privateConstructorUsedError;
  @override
  int get timesAccessed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$Password$CopyWith<_$Password$> get copyWith => throw _privateConstructorUsedError;
}

Code _$CodeFromJson(Map<String, dynamic> json) {
  return Code$.fromJson(json);
}

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
abstract class _$$Code$CopyWith<$Res> implements $CodeCopyWith<$Res> {
  factory _$$Code$CopyWith(_$Code$ value, $Res Function(_$Code$) then) = __$$Code$CopyWithImpl<$Res>;
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
class __$$Code$CopyWithImpl<$Res> extends _$CodeCopyWithImpl<$Res> implements _$$Code$CopyWith<$Res> {
  __$$Code$CopyWithImpl(_$Code$ _value, $Res Function(_$Code$) _then) : super(_value, (v) => _then(v as _$Code$));

  @override
  _$Code$ get _value => super._value as _$Code$;

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
    return _then(_$Code$(
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
  @override
  @JsonKey()
  final String title;
  @override
  final String data;
  @override
  final BarcodeFormat format;
  @override
  @JsonKey()
  final String note;
  @override
  final DateTime createdAt;
  @override
  final DateTime lastAccess;
  @override
  @JsonKey()
  final int timesAccessed;

  @override
  String toString() {
    return 'Code(id: $id, title: $title, data: $data, format: $format, note: $note, createdAt: $createdAt, lastAccess: $lastAccess, timesAccessed: $timesAccessed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Code$ &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.format, format) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.lastAccess, lastAccess) &&
            const DeepCollectionEquality().equals(other.timesAccessed, timesAccessed));
  }

  @JsonKey(ignore: true)
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
  _$$Code$CopyWith<_$Code$> get copyWith => __$$Code$CopyWithImpl<_$Code$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Code$ToJson(this);
  }
}

abstract class Code$ implements Code {
  const factory Code$(
      {required final String id,
      final String title,
      required final String data,
      required final BarcodeFormat format,
      final String note,
      required final DateTime createdAt,
      required final DateTime lastAccess,
      final int timesAccessed}) = _$Code$;

  factory Code$.fromJson(Map<String, dynamic> json) = _$Code$.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get data => throw _privateConstructorUsedError;
  @override
  BarcodeFormat get format => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime get lastAccess => throw _privateConstructorUsedError;
  @override
  int get timesAccessed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$Code$CopyWith<_$Code$> get copyWith => throw _privateConstructorUsedError;
}

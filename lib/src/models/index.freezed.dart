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
      String? masterKey,
      FirebaseUser? firebaseUser,
      List<VaultBundle> vault = const <VaultBundle>[],
      int selectedPage = 0,
      PersistentState persistentState = const PersistentState(),
      DetailsState detailsState = const DetailsState(),
      CreateCodeState createCodeState = const CreateCodeState(),
      UIState uiState = const UIState(),
      PasswordGeneratorState passwordGeneratorState = const PasswordGeneratorState()}) {
    return AppState$(
      pending: pending,
      masterKey: masterKey,
      firebaseUser: firebaseUser,
      vault: vault,
      selectedPage: selectedPage,
      persistentState: persistentState,
      detailsState: detailsState,
      createCodeState: createCodeState,
      uiState: uiState,
      passwordGeneratorState: passwordGeneratorState,
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
  String? get masterKey => throw _privateConstructorUsedError;
  FirebaseUser? get firebaseUser => throw _privateConstructorUsedError;
  List<VaultBundle> get vault => throw _privateConstructorUsedError;
  int get selectedPage => throw _privateConstructorUsedError;
  PersistentState get persistentState => throw _privateConstructorUsedError; // UI states
  DetailsState get detailsState => throw _privateConstructorUsedError;
  CreateCodeState get createCodeState => throw _privateConstructorUsedError;
  UIState get uiState => throw _privateConstructorUsedError;
  PasswordGeneratorState get passwordGeneratorState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {Set<String> pending,
      String? masterKey,
      FirebaseUser? firebaseUser,
      List<VaultBundle> vault,
      int selectedPage,
      PersistentState persistentState,
      DetailsState detailsState,
      CreateCodeState createCodeState,
      UIState uiState,
      PasswordGeneratorState passwordGeneratorState});

  $FirebaseUserCopyWith<$Res>? get firebaseUser;
  $PersistentStateCopyWith<$Res> get persistentState;
  $DetailsStateCopyWith<$Res> get detailsState;
  $CreateCodeStateCopyWith<$Res> get createCodeState;
  $UIStateCopyWith<$Res> get uiState;
  $PasswordGeneratorStateCopyWith<$Res> get passwordGeneratorState;
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
    Object? masterKey = freezed,
    Object? firebaseUser = freezed,
    Object? vault = freezed,
    Object? selectedPage = freezed,
    Object? persistentState = freezed,
    Object? detailsState = freezed,
    Object? createCodeState = freezed,
    Object? uiState = freezed,
    Object? passwordGeneratorState = freezed,
  }) {
    return _then(_value.copyWith(
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String?,
      firebaseUser: firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as FirebaseUser?,
      vault: vault == freezed
          ? _value.vault
          : vault // ignore: cast_nullable_to_non_nullable
              as List<VaultBundle>,
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as int,
      persistentState: persistentState == freezed
          ? _value.persistentState
          : persistentState // ignore: cast_nullable_to_non_nullable
              as PersistentState,
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
      passwordGeneratorState: passwordGeneratorState == freezed
          ? _value.passwordGeneratorState
          : passwordGeneratorState // ignore: cast_nullable_to_non_nullable
              as PasswordGeneratorState,
    ));
  }

  @override
  $FirebaseUserCopyWith<$Res>? get firebaseUser {
    if (_value.firebaseUser == null) {
      return null;
    }

    return $FirebaseUserCopyWith<$Res>(_value.firebaseUser!, (value) {
      return _then(_value.copyWith(firebaseUser: value));
    });
  }

  @override
  $PersistentStateCopyWith<$Res> get persistentState {
    return $PersistentStateCopyWith<$Res>(_value.persistentState, (value) {
      return _then(_value.copyWith(persistentState: value));
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

  @override
  $PasswordGeneratorStateCopyWith<$Res> get passwordGeneratorState {
    return $PasswordGeneratorStateCopyWith<$Res>(_value.passwordGeneratorState, (value) {
      return _then(_value.copyWith(passwordGeneratorState: value));
    });
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) = _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {Set<String> pending,
      String? masterKey,
      FirebaseUser? firebaseUser,
      List<VaultBundle> vault,
      int selectedPage,
      PersistentState persistentState,
      DetailsState detailsState,
      CreateCodeState createCodeState,
      UIState uiState,
      PasswordGeneratorState passwordGeneratorState});

  @override
  $FirebaseUserCopyWith<$Res>? get firebaseUser;
  @override
  $PersistentStateCopyWith<$Res> get persistentState;
  @override
  $DetailsStateCopyWith<$Res> get detailsState;
  @override
  $CreateCodeStateCopyWith<$Res> get createCodeState;
  @override
  $UIStateCopyWith<$Res> get uiState;
  @override
  $PasswordGeneratorStateCopyWith<$Res> get passwordGeneratorState;
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
    Object? masterKey = freezed,
    Object? firebaseUser = freezed,
    Object? vault = freezed,
    Object? selectedPage = freezed,
    Object? persistentState = freezed,
    Object? detailsState = freezed,
    Object? createCodeState = freezed,
    Object? uiState = freezed,
    Object? passwordGeneratorState = freezed,
  }) {
    return _then(AppState$(
      pending: pending == freezed
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String?,
      firebaseUser: firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as FirebaseUser?,
      vault: vault == freezed
          ? _value.vault
          : vault // ignore: cast_nullable_to_non_nullable
              as List<VaultBundle>,
      selectedPage: selectedPage == freezed
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as int,
      persistentState: persistentState == freezed
          ? _value.persistentState
          : persistentState // ignore: cast_nullable_to_non_nullable
              as PersistentState,
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
      passwordGeneratorState: passwordGeneratorState == freezed
          ? _value.passwordGeneratorState
          : passwordGeneratorState // ignore: cast_nullable_to_non_nullable
              as PasswordGeneratorState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.pending = const <String>{},
      this.masterKey,
      this.firebaseUser,
      this.vault = const <VaultBundle>[],
      this.selectedPage = 0,
      this.persistentState = const PersistentState(),
      this.detailsState = const DetailsState(),
      this.createCodeState = const CreateCodeState(),
      this.uiState = const UIState(),
      this.passwordGeneratorState = const PasswordGeneratorState()});

  factory _$AppState$.fromJson(Map<String, dynamic> json) => _$$AppState$FromJson(json);

  @JsonKey()
  @override
  final Set<String> pending;
  @override
  final String? masterKey;
  @override
  final FirebaseUser? firebaseUser;
  @JsonKey()
  @override
  final List<VaultBundle> vault;
  @JsonKey()
  @override
  final int selectedPage;
  @JsonKey()
  @override
  final PersistentState persistentState;
  @JsonKey()
  @override // UI states
  final DetailsState detailsState;
  @JsonKey()
  @override
  final CreateCodeState createCodeState;
  @JsonKey()
  @override
  final UIState uiState;
  @JsonKey()
  @override
  final PasswordGeneratorState passwordGeneratorState;

  @override
  String toString() {
    return 'AppState(pending: $pending, masterKey: $masterKey, firebaseUser: $firebaseUser, vault: $vault, selectedPage: $selectedPage, persistentState: $persistentState, detailsState: $detailsState, createCodeState: $createCodeState, uiState: $uiState, passwordGeneratorState: $passwordGeneratorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.pending, pending) &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.firebaseUser, firebaseUser) &&
            const DeepCollectionEquality().equals(other.vault, vault) &&
            const DeepCollectionEquality().equals(other.selectedPage, selectedPage) &&
            const DeepCollectionEquality().equals(other.persistentState, persistentState) &&
            const DeepCollectionEquality().equals(other.detailsState, detailsState) &&
            const DeepCollectionEquality().equals(other.createCodeState, createCodeState) &&
            const DeepCollectionEquality().equals(other.uiState, uiState) &&
            const DeepCollectionEquality().equals(other.passwordGeneratorState, passwordGeneratorState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pending),
      const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(firebaseUser),
      const DeepCollectionEquality().hash(vault),
      const DeepCollectionEquality().hash(selectedPage),
      const DeepCollectionEquality().hash(persistentState),
      const DeepCollectionEquality().hash(detailsState),
      const DeepCollectionEquality().hash(createCodeState),
      const DeepCollectionEquality().hash(uiState),
      const DeepCollectionEquality().hash(passwordGeneratorState));

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
      String? masterKey,
      FirebaseUser? firebaseUser,
      List<VaultBundle> vault,
      int selectedPage,
      PersistentState persistentState,
      DetailsState detailsState,
      CreateCodeState createCodeState,
      UIState uiState,
      PasswordGeneratorState passwordGeneratorState}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  Set<String> get pending;
  @override
  String? get masterKey;
  @override
  FirebaseUser? get firebaseUser;
  @override
  List<VaultBundle> get vault;
  @override
  int get selectedPage;
  @override
  PersistentState get persistentState;
  @override // UI states
  DetailsState get detailsState;
  @override
  CreateCodeState get createCodeState;
  @override
  UIState get uiState;
  @override
  PasswordGeneratorState get passwordGeneratorState;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith => throw _privateConstructorUsedError;
}

PersistentState _$PersistentStateFromJson(Map<String, dynamic> json) {
  return PersistentState$.fromJson(json);
}

/// @nodoc
class _$PersistentStateTearOff {
  const _$PersistentStateTearOff();

  PersistentState$ call({Bundle bundle = const Bundle(), String? walletPrivateKey, String? materKeyHash}) {
    return PersistentState$(
      bundle: bundle,
      walletPrivateKey: walletPrivateKey,
      materKeyHash: materKeyHash,
    );
  }

  PersistentState fromJson(Map<String, Object?> json) {
    return PersistentState.fromJson(json);
  }
}

/// @nodoc
const $PersistentState = _$PersistentStateTearOff();

/// @nodoc
mixin _$PersistentState {
  Bundle get bundle => throw _privateConstructorUsedError; // Current bundle
  String? get walletPrivateKey => throw _privateConstructorUsedError; // Current crypto-wallet private key
  String? get materKeyHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersistentStateCopyWith<PersistentState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersistentStateCopyWith<$Res> {
  factory $PersistentStateCopyWith(PersistentState value, $Res Function(PersistentState) then) =
      _$PersistentStateCopyWithImpl<$Res>;
  $Res call({Bundle bundle, String? walletPrivateKey, String? materKeyHash});

  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$PersistentStateCopyWithImpl<$Res> implements $PersistentStateCopyWith<$Res> {
  _$PersistentStateCopyWithImpl(this._value, this._then);

  final PersistentState _value;
  // ignore: unused_field
  final $Res Function(PersistentState) _then;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? walletPrivateKey = freezed,
    Object? materKeyHash = freezed,
  }) {
    return _then(_value.copyWith(
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      walletPrivateKey: walletPrivateKey == freezed
          ? _value.walletPrivateKey
          : walletPrivateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      materKeyHash: materKeyHash == freezed
          ? _value.materKeyHash
          : materKeyHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $BundleCopyWith<$Res> get bundle {
    return $BundleCopyWith<$Res>(_value.bundle, (value) {
      return _then(_value.copyWith(bundle: value));
    });
  }
}

/// @nodoc
abstract class $PersistentState$CopyWith<$Res> implements $PersistentStateCopyWith<$Res> {
  factory $PersistentState$CopyWith(PersistentState$ value, $Res Function(PersistentState$) then) =
      _$PersistentState$CopyWithImpl<$Res>;
  @override
  $Res call({Bundle bundle, String? walletPrivateKey, String? materKeyHash});

  @override
  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$PersistentState$CopyWithImpl<$Res> extends _$PersistentStateCopyWithImpl<$Res>
    implements $PersistentState$CopyWith<$Res> {
  _$PersistentState$CopyWithImpl(PersistentState$ _value, $Res Function(PersistentState$) _then)
      : super(_value, (v) => _then(v as PersistentState$));

  @override
  PersistentState$ get _value => super._value as PersistentState$;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? walletPrivateKey = freezed,
    Object? materKeyHash = freezed,
  }) {
    return _then(PersistentState$(
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      walletPrivateKey: walletPrivateKey == freezed
          ? _value.walletPrivateKey
          : walletPrivateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      materKeyHash: materKeyHash == freezed
          ? _value.materKeyHash
          : materKeyHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersistentState$ implements PersistentState$ {
  const _$PersistentState$({this.bundle = const Bundle(), this.walletPrivateKey, this.materKeyHash});

  factory _$PersistentState$.fromJson(Map<String, dynamic> json) => _$$PersistentState$FromJson(json);

  @JsonKey()
  @override
  final Bundle bundle;
  @override // Current bundle
  final String? walletPrivateKey;
  @override // Current crypto-wallet private key
  final String? materKeyHash;

  @override
  String toString() {
    return 'PersistentState(bundle: $bundle, walletPrivateKey: $walletPrivateKey, materKeyHash: $materKeyHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersistentState$ &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.walletPrivateKey, walletPrivateKey) &&
            const DeepCollectionEquality().equals(other.materKeyHash, materKeyHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(bundle),
      const DeepCollectionEquality().hash(walletPrivateKey), const DeepCollectionEquality().hash(materKeyHash));

  @JsonKey(ignore: true)
  @override
  $PersistentState$CopyWith<PersistentState$> get copyWith =>
      _$PersistentState$CopyWithImpl<PersistentState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersistentState$ToJson(this);
  }
}

abstract class PersistentState$ implements PersistentState {
  const factory PersistentState$({Bundle bundle, String? walletPrivateKey, String? materKeyHash}) = _$PersistentState$;

  factory PersistentState$.fromJson(Map<String, dynamic> json) = _$PersistentState$.fromJson;

  @override
  Bundle get bundle;
  @override // Current bundle
  String? get walletPrivateKey;
  @override // Current crypto-wallet private key
  String? get materKeyHash;
  @override
  @JsonKey(ignore: true)
  $PersistentState$CopyWith<PersistentState$> get copyWith => throw _privateConstructorUsedError;
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

UIState _$UIStateFromJson(Map<String, dynamic> json) {
  return UIState$.fromJson(json);
}

/// @nodoc
class _$UIStateTearOff {
  const _$UIStateTearOff();

  UIState$ call({WalletInfo? walletInfo, bool showPassword = false}) {
    return UIState$(
      walletInfo: walletInfo,
      showPassword: showPassword,
    );
  }

  UIState fromJson(Map<String, Object?> json) {
    return UIState.fromJson(json);
  }
}

/// @nodoc
const $UIState = _$UIStateTearOff();

/// @nodoc
mixin _$UIState {
  WalletInfo? get walletInfo => throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UIStateCopyWith<UIState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIStateCopyWith<$Res> {
  factory $UIStateCopyWith(UIState value, $Res Function(UIState) then) = _$UIStateCopyWithImpl<$Res>;
  $Res call({WalletInfo? walletInfo, bool showPassword});

  $WalletInfoCopyWith<$Res>? get walletInfo;
}

/// @nodoc
class _$UIStateCopyWithImpl<$Res> implements $UIStateCopyWith<$Res> {
  _$UIStateCopyWithImpl(this._value, this._then);

  final UIState _value;
  // ignore: unused_field
  final $Res Function(UIState) _then;

  @override
  $Res call({
    Object? walletInfo = freezed,
    Object? showPassword = freezed,
  }) {
    return _then(_value.copyWith(
      walletInfo: walletInfo == freezed
          ? _value.walletInfo
          : walletInfo // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $WalletInfoCopyWith<$Res>? get walletInfo {
    if (_value.walletInfo == null) {
      return null;
    }

    return $WalletInfoCopyWith<$Res>(_value.walletInfo!, (value) {
      return _then(_value.copyWith(walletInfo: value));
    });
  }
}

/// @nodoc
abstract class $UIState$CopyWith<$Res> implements $UIStateCopyWith<$Res> {
  factory $UIState$CopyWith(UIState$ value, $Res Function(UIState$) then) = _$UIState$CopyWithImpl<$Res>;
  @override
  $Res call({WalletInfo? walletInfo, bool showPassword});

  @override
  $WalletInfoCopyWith<$Res>? get walletInfo;
}

/// @nodoc
class _$UIState$CopyWithImpl<$Res> extends _$UIStateCopyWithImpl<$Res> implements $UIState$CopyWith<$Res> {
  _$UIState$CopyWithImpl(UIState$ _value, $Res Function(UIState$) _then) : super(_value, (v) => _then(v as UIState$));

  @override
  UIState$ get _value => super._value as UIState$;

  @override
  $Res call({
    Object? walletInfo = freezed,
    Object? showPassword = freezed,
  }) {
    return _then(UIState$(
      walletInfo: walletInfo == freezed
          ? _value.walletInfo
          : walletInfo // ignore: cast_nullable_to_non_nullable
              as WalletInfo?,
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
  const _$UIState$({this.walletInfo, this.showPassword = false});

  factory _$UIState$.fromJson(Map<String, dynamic> json) => _$$UIState$FromJson(json);

  @override
  final WalletInfo? walletInfo;
  @JsonKey()
  @override
  final bool showPassword;

  @override
  String toString() {
    return 'UIState(walletInfo: $walletInfo, showPassword: $showPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UIState$ &&
            const DeepCollectionEquality().equals(other.walletInfo, walletInfo) &&
            const DeepCollectionEquality().equals(other.showPassword, showPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(walletInfo), const DeepCollectionEquality().hash(showPassword));

  @JsonKey(ignore: true)
  @override
  $UIState$CopyWith<UIState$> get copyWith => _$UIState$CopyWithImpl<UIState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UIState$ToJson(this);
  }
}

abstract class UIState$ implements UIState {
  const factory UIState$({WalletInfo? walletInfo, bool showPassword}) = _$UIState$;

  factory UIState$.fromJson(Map<String, dynamic> json) = _$UIState$.fromJson;

  @override
  WalletInfo? get walletInfo;
  @override
  bool get showPassword;
  @override
  @JsonKey(ignore: true)
  $UIState$CopyWith<UIState$> get copyWith => throw _privateConstructorUsedError;
}

PasswordGeneratorState _$PasswordGeneratorStateFromJson(Map<String, dynamic> json) {
  return PasswordGeneratorState$.fromJson(json);
}

/// @nodoc
class _$PasswordGeneratorStateTearOff {
  const _$PasswordGeneratorStateTearOff();

  PasswordGeneratorState$ call(
      {Set<CharacterPool> characterPool = kCharacterPoolValues, int length = 16, String password = ''}) {
    return PasswordGeneratorState$(
      characterPool: characterPool,
      length: length,
      password: password,
    );
  }

  PasswordGeneratorState fromJson(Map<String, Object?> json) {
    return PasswordGeneratorState.fromJson(json);
  }
}

/// @nodoc
const $PasswordGeneratorState = _$PasswordGeneratorStateTearOff();

/// @nodoc
mixin _$PasswordGeneratorState {
  Set<CharacterPool> get characterPool => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordGeneratorStateCopyWith<PasswordGeneratorState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordGeneratorStateCopyWith<$Res> {
  factory $PasswordGeneratorStateCopyWith(PasswordGeneratorState value, $Res Function(PasswordGeneratorState) then) =
      _$PasswordGeneratorStateCopyWithImpl<$Res>;
  $Res call({Set<CharacterPool> characterPool, int length, String password});
}

/// @nodoc
class _$PasswordGeneratorStateCopyWithImpl<$Res> implements $PasswordGeneratorStateCopyWith<$Res> {
  _$PasswordGeneratorStateCopyWithImpl(this._value, this._then);

  final PasswordGeneratorState _value;
  // ignore: unused_field
  final $Res Function(PasswordGeneratorState) _then;

  @override
  $Res call({
    Object? characterPool = freezed,
    Object? length = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      characterPool: characterPool == freezed
          ? _value.characterPool
          : characterPool // ignore: cast_nullable_to_non_nullable
              as Set<CharacterPool>,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $PasswordGeneratorState$CopyWith<$Res> implements $PasswordGeneratorStateCopyWith<$Res> {
  factory $PasswordGeneratorState$CopyWith(PasswordGeneratorState$ value, $Res Function(PasswordGeneratorState$) then) =
      _$PasswordGeneratorState$CopyWithImpl<$Res>;
  @override
  $Res call({Set<CharacterPool> characterPool, int length, String password});
}

/// @nodoc
class _$PasswordGeneratorState$CopyWithImpl<$Res> extends _$PasswordGeneratorStateCopyWithImpl<$Res>
    implements $PasswordGeneratorState$CopyWith<$Res> {
  _$PasswordGeneratorState$CopyWithImpl(PasswordGeneratorState$ _value, $Res Function(PasswordGeneratorState$) _then)
      : super(_value, (v) => _then(v as PasswordGeneratorState$));

  @override
  PasswordGeneratorState$ get _value => super._value as PasswordGeneratorState$;

  @override
  $Res call({
    Object? characterPool = freezed,
    Object? length = freezed,
    Object? password = freezed,
  }) {
    return _then(PasswordGeneratorState$(
      characterPool: characterPool == freezed
          ? _value.characterPool
          : characterPool // ignore: cast_nullable_to_non_nullable
              as Set<CharacterPool>,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordGeneratorState$ implements PasswordGeneratorState$ {
  const _$PasswordGeneratorState$({this.characterPool = kCharacterPoolValues, this.length = 16, this.password = ''});

  factory _$PasswordGeneratorState$.fromJson(Map<String, dynamic> json) => _$$PasswordGeneratorState$FromJson(json);

  @JsonKey()
  @override
  final Set<CharacterPool> characterPool;
  @JsonKey()
  @override
  final int length;
  @JsonKey()
  @override
  final String password;

  @override
  String toString() {
    return 'PasswordGeneratorState(characterPool: $characterPool, length: $length, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordGeneratorState$ &&
            const DeepCollectionEquality().equals(other.characterPool, characterPool) &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(characterPool),
      const DeepCollectionEquality().hash(length), const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordGeneratorState$CopyWith<PasswordGeneratorState$> get copyWith =>
      _$PasswordGeneratorState$CopyWithImpl<PasswordGeneratorState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordGeneratorState$ToJson(this);
  }
}

abstract class PasswordGeneratorState$ implements PasswordGeneratorState {
  const factory PasswordGeneratorState$({Set<CharacterPool> characterPool, int length, String password}) =
      _$PasswordGeneratorState$;

  factory PasswordGeneratorState$.fromJson(Map<String, dynamic> json) = _$PasswordGeneratorState$.fromJson;

  @override
  Set<CharacterPool> get characterPool;
  @override
  int get length;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  $PasswordGeneratorState$CopyWith<PasswordGeneratorState$> get copyWith => throw _privateConstructorUsedError;
}

WalletInfo _$WalletInfoFromJson(Map<String, dynamic> json) {
  return WalletInfo$.fromJson(json);
}

/// @nodoc
class _$WalletInfoTearOff {
  const _$WalletInfoTearOff();

  WalletInfo$ call({required String balance, required String address}) {
    return WalletInfo$(
      balance: balance,
      address: address,
    );
  }

  WalletInfo fromJson(Map<String, Object?> json) {
    return WalletInfo.fromJson(json);
  }
}

/// @nodoc
const $WalletInfo = _$WalletInfoTearOff();

/// @nodoc
mixin _$WalletInfo {
  String get balance => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletInfoCopyWith<WalletInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInfoCopyWith<$Res> {
  factory $WalletInfoCopyWith(WalletInfo value, $Res Function(WalletInfo) then) = _$WalletInfoCopyWithImpl<$Res>;
  $Res call({String balance, String address});
}

/// @nodoc
class _$WalletInfoCopyWithImpl<$Res> implements $WalletInfoCopyWith<$Res> {
  _$WalletInfoCopyWithImpl(this._value, this._then);

  final WalletInfo _value;
  // ignore: unused_field
  final $Res Function(WalletInfo) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $WalletInfo$CopyWith<$Res> implements $WalletInfoCopyWith<$Res> {
  factory $WalletInfo$CopyWith(WalletInfo$ value, $Res Function(WalletInfo$) then) = _$WalletInfo$CopyWithImpl<$Res>;
  @override
  $Res call({String balance, String address});
}

/// @nodoc
class _$WalletInfo$CopyWithImpl<$Res> extends _$WalletInfoCopyWithImpl<$Res> implements $WalletInfo$CopyWith<$Res> {
  _$WalletInfo$CopyWithImpl(WalletInfo$ _value, $Res Function(WalletInfo$) _then)
      : super(_value, (v) => _then(v as WalletInfo$));

  @override
  WalletInfo$ get _value => super._value as WalletInfo$;

  @override
  $Res call({
    Object? balance = freezed,
    Object? address = freezed,
  }) {
    return _then(WalletInfo$(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletInfo$ implements WalletInfo$ {
  const _$WalletInfo$({required this.balance, required this.address});

  factory _$WalletInfo$.fromJson(Map<String, dynamic> json) => _$$WalletInfo$FromJson(json);

  @override
  final String balance;
  @override
  final String address;

  @override
  String toString() {
    return 'WalletInfo(balance: $balance, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletInfo$ &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(balance), const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  $WalletInfo$CopyWith<WalletInfo$> get copyWith => _$WalletInfo$CopyWithImpl<WalletInfo$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletInfo$ToJson(this);
  }
}

abstract class WalletInfo$ implements WalletInfo {
  const factory WalletInfo$({required String balance, required String address}) = _$WalletInfo$;

  factory WalletInfo$.fromJson(Map<String, dynamic> json) = _$WalletInfo$.fromJson;

  @override
  String get balance;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  $WalletInfo$CopyWith<WalletInfo$> get copyWith => throw _privateConstructorUsedError;
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

VaultBundle _$VaultBundleFromJson(Map<String, dynamic> json) {
  return VaultBundle$.fromJson(json);
}

/// @nodoc
class _$VaultBundleTearOff {
  const _$VaultBundleTearOff();

  VaultBundle$ call({required Bundle bundle, required DateTime storedAt, required BundleType type}) {
    return VaultBundle$(
      bundle: bundle,
      storedAt: storedAt,
      type: type,
    );
  }

  VaultBundle fromJson(Map<String, Object?> json) {
    return VaultBundle.fromJson(json);
  }
}

/// @nodoc
const $VaultBundle = _$VaultBundleTearOff();

/// @nodoc
mixin _$VaultBundle {
  Bundle get bundle => throw _privateConstructorUsedError;
  DateTime get storedAt => throw _privateConstructorUsedError;
  BundleType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultBundleCopyWith<VaultBundle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultBundleCopyWith<$Res> {
  factory $VaultBundleCopyWith(VaultBundle value, $Res Function(VaultBundle) then) = _$VaultBundleCopyWithImpl<$Res>;
  $Res call({Bundle bundle, DateTime storedAt, BundleType type});

  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$VaultBundleCopyWithImpl<$Res> implements $VaultBundleCopyWith<$Res> {
  _$VaultBundleCopyWithImpl(this._value, this._then);

  final VaultBundle _value;
  // ignore: unused_field
  final $Res Function(VaultBundle) _then;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? storedAt = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      storedAt: storedAt == freezed
          ? _value.storedAt
          : storedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BundleType,
    ));
  }

  @override
  $BundleCopyWith<$Res> get bundle {
    return $BundleCopyWith<$Res>(_value.bundle, (value) {
      return _then(_value.copyWith(bundle: value));
    });
  }
}

/// @nodoc
abstract class $VaultBundle$CopyWith<$Res> implements $VaultBundleCopyWith<$Res> {
  factory $VaultBundle$CopyWith(VaultBundle$ value, $Res Function(VaultBundle$) then) =
      _$VaultBundle$CopyWithImpl<$Res>;
  @override
  $Res call({Bundle bundle, DateTime storedAt, BundleType type});

  @override
  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$VaultBundle$CopyWithImpl<$Res> extends _$VaultBundleCopyWithImpl<$Res> implements $VaultBundle$CopyWith<$Res> {
  _$VaultBundle$CopyWithImpl(VaultBundle$ _value, $Res Function(VaultBundle$) _then)
      : super(_value, (v) => _then(v as VaultBundle$));

  @override
  VaultBundle$ get _value => super._value as VaultBundle$;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? storedAt = freezed,
    Object? type = freezed,
  }) {
    return _then(VaultBundle$(
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      storedAt: storedAt == freezed
          ? _value.storedAt
          : storedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BundleType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VaultBundle$ implements VaultBundle$ {
  const _$VaultBundle$({required this.bundle, required this.storedAt, required this.type});

  factory _$VaultBundle$.fromJson(Map<String, dynamic> json) => _$$VaultBundle$FromJson(json);

  @override
  final Bundle bundle;
  @override
  final DateTime storedAt;
  @override
  final BundleType type;

  @override
  String toString() {
    return 'VaultBundle(bundle: $bundle, storedAt: $storedAt, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VaultBundle$ &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.storedAt, storedAt) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(bundle),
      const DeepCollectionEquality().hash(storedAt), const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  $VaultBundle$CopyWith<VaultBundle$> get copyWith => _$VaultBundle$CopyWithImpl<VaultBundle$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VaultBundle$ToJson(this);
  }
}

abstract class VaultBundle$ implements VaultBundle {
  const factory VaultBundle$({required Bundle bundle, required DateTime storedAt, required BundleType type}) =
      _$VaultBundle$;

  factory VaultBundle$.fromJson(Map<String, dynamic> json) = _$VaultBundle$.fromJson;

  @override
  Bundle get bundle;
  @override
  DateTime get storedAt;
  @override
  BundleType get type;
  @override
  @JsonKey(ignore: true)
  $VaultBundle$CopyWith<VaultBundle$> get copyWith => throw _privateConstructorUsedError;
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

FirebaseUser _$FirebaseUserFromJson(Map<String, dynamic> json) {
  return FirebaseUser$.fromJson(json);
}

/// @nodoc
class _$FirebaseUserTearOff {
  const _$FirebaseUserTearOff();

  FirebaseUser$ call({required String uid, required String email, required String username}) {
    return FirebaseUser$(
      uid: uid,
      email: email,
      username: username,
    );
  }

  FirebaseUser fromJson(Map<String, Object?> json) {
    return FirebaseUser.fromJson(json);
  }
}

/// @nodoc
const $FirebaseUser = _$FirebaseUserTearOff();

/// @nodoc
mixin _$FirebaseUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseUserCopyWith<FirebaseUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseUserCopyWith<$Res> {
  factory $FirebaseUserCopyWith(FirebaseUser value, $Res Function(FirebaseUser) then) =
      _$FirebaseUserCopyWithImpl<$Res>;
  $Res call({String uid, String email, String username});
}

/// @nodoc
class _$FirebaseUserCopyWithImpl<$Res> implements $FirebaseUserCopyWith<$Res> {
  _$FirebaseUserCopyWithImpl(this._value, this._then);

  final FirebaseUser _value;
  // ignore: unused_field
  final $Res Function(FirebaseUser) _then;

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
abstract class $FirebaseUser$CopyWith<$Res> implements $FirebaseUserCopyWith<$Res> {
  factory $FirebaseUser$CopyWith(FirebaseUser$ value, $Res Function(FirebaseUser$) then) =
      _$FirebaseUser$CopyWithImpl<$Res>;
  @override
  $Res call({String uid, String email, String username});
}

/// @nodoc
class _$FirebaseUser$CopyWithImpl<$Res> extends _$FirebaseUserCopyWithImpl<$Res>
    implements $FirebaseUser$CopyWith<$Res> {
  _$FirebaseUser$CopyWithImpl(FirebaseUser$ _value, $Res Function(FirebaseUser$) _then)
      : super(_value, (v) => _then(v as FirebaseUser$));

  @override
  FirebaseUser$ get _value => super._value as FirebaseUser$;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? username = freezed,
  }) {
    return _then(FirebaseUser$(
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
class _$FirebaseUser$ implements FirebaseUser$ {
  const _$FirebaseUser$({required this.uid, required this.email, required this.username});

  factory _$FirebaseUser$.fromJson(Map<String, dynamic> json) => _$$FirebaseUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;

  @override
  String toString() {
    return 'FirebaseUser(uid: $uid, email: $email, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseUser$ &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email), const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  $FirebaseUser$CopyWith<FirebaseUser$> get copyWith => _$FirebaseUser$CopyWithImpl<FirebaseUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseUser$ToJson(this);
  }
}

abstract class FirebaseUser$ implements FirebaseUser {
  const factory FirebaseUser$({required String uid, required String email, required String username}) = _$FirebaseUser$;

  factory FirebaseUser$.fromJson(Map<String, dynamic> json) = _$FirebaseUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  $FirebaseUser$CopyWith<FirebaseUser$> get copyWith => throw _privateConstructorUsedError;
}

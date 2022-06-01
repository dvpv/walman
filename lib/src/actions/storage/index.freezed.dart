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

/// @nodoc
class _$BlockchainAddBundleTearOff {
  const _$BlockchainAddBundleTearOff();

  BlockchainAddBundleStart start(
      {required String walletPrivateKey,
      required Bundle bundle,
      ActionResult? onResult,
      String pendingId = _kBlockchainAddBundlePendingId}) {
    return BlockchainAddBundleStart(
      walletPrivateKey: walletPrivateKey,
      bundle: bundle,
      onResult: onResult,
      pendingId: pendingId,
    );
  }

  BlockchainAddBundleSuccessful successful([String pendingId = _kBlockchainAddBundlePendingId]) {
    return BlockchainAddBundleSuccessful(
      pendingId,
    );
  }

  BlockchainAddBundleError error(Object error, StackTrace stackTrace,
      [String pendingId = _kBlockchainAddBundlePendingId]) {
    return BlockchainAddBundleError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $BlockchainAddBundle = _$BlockchainAddBundleTearOff();

/// @nodoc
mixin _$BlockchainAddBundle {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlockchainAddBundleStart value) start,
    required TResult Function(BlockchainAddBundleSuccessful value) successful,
    required TResult Function(BlockchainAddBundleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BlockchainAddBundleStart value)? start,
    TResult Function(BlockchainAddBundleSuccessful value)? successful,
    TResult Function(BlockchainAddBundleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlockchainAddBundleStart value)? start,
    TResult Function(BlockchainAddBundleSuccessful value)? successful,
    TResult Function(BlockchainAddBundleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlockchainAddBundleCopyWith<BlockchainAddBundle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainAddBundleCopyWith<$Res> {
  factory $BlockchainAddBundleCopyWith(BlockchainAddBundle value, $Res Function(BlockchainAddBundle) then) =
      _$BlockchainAddBundleCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$BlockchainAddBundleCopyWithImpl<$Res> implements $BlockchainAddBundleCopyWith<$Res> {
  _$BlockchainAddBundleCopyWithImpl(this._value, this._then);

  final BlockchainAddBundle _value;
  // ignore: unused_field
  final $Res Function(BlockchainAddBundle) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $BlockchainAddBundleStartCopyWith<$Res> implements $BlockchainAddBundleCopyWith<$Res> {
  factory $BlockchainAddBundleStartCopyWith(
          BlockchainAddBundleStart value, $Res Function(BlockchainAddBundleStart) then) =
      _$BlockchainAddBundleStartCopyWithImpl<$Res>;
  @override
  $Res call({String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId});

  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$BlockchainAddBundleStartCopyWithImpl<$Res> extends _$BlockchainAddBundleCopyWithImpl<$Res>
    implements $BlockchainAddBundleStartCopyWith<$Res> {
  _$BlockchainAddBundleStartCopyWithImpl(BlockchainAddBundleStart _value, $Res Function(BlockchainAddBundleStart) _then)
      : super(_value, (v) => _then(v as BlockchainAddBundleStart));

  @override
  BlockchainAddBundleStart get _value => super._value as BlockchainAddBundleStart;

  @override
  $Res call({
    Object? walletPrivateKey = freezed,
    Object? bundle = freezed,
    Object? onResult = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(BlockchainAddBundleStart(
      walletPrivateKey: walletPrivateKey == freezed
          ? _value.walletPrivateKey
          : walletPrivateKey // ignore: cast_nullable_to_non_nullable
              as String,
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      onResult: onResult == freezed
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult?,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
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

@Implements<ActionStart>()
class _$BlockchainAddBundleStart implements BlockchainAddBundleStart {
  const _$BlockchainAddBundleStart(
      {required this.walletPrivateKey,
      required this.bundle,
      this.onResult,
      this.pendingId = _kBlockchainAddBundlePendingId});

  @override
  final String walletPrivateKey;
  @override
  final Bundle bundle;
  @override
  final ActionResult? onResult;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'BlockchainAddBundle.start(walletPrivateKey: $walletPrivateKey, bundle: $bundle, onResult: $onResult, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockchainAddBundleStart &&
            const DeepCollectionEquality().equals(other.walletPrivateKey, walletPrivateKey) &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            (identical(other.onResult, onResult) || other.onResult == onResult) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(walletPrivateKey),
      const DeepCollectionEquality().hash(bundle), onResult, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $BlockchainAddBundleStartCopyWith<BlockchainAddBundleStart> get copyWith =>
      _$BlockchainAddBundleStartCopyWithImpl<BlockchainAddBundleStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(walletPrivateKey, bundle, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(walletPrivateKey, bundle, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(walletPrivateKey, bundle, onResult, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlockchainAddBundleStart value) start,
    required TResult Function(BlockchainAddBundleSuccessful value) successful,
    required TResult Function(BlockchainAddBundleError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BlockchainAddBundleStart value)? start,
    TResult Function(BlockchainAddBundleSuccessful value)? successful,
    TResult Function(BlockchainAddBundleError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlockchainAddBundleStart value)? start,
    TResult Function(BlockchainAddBundleSuccessful value)? successful,
    TResult Function(BlockchainAddBundleError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class BlockchainAddBundleStart implements BlockchainAddBundle, ActionStart {
  const factory BlockchainAddBundleStart(
      {required String walletPrivateKey,
      required Bundle bundle,
      ActionResult? onResult,
      String pendingId}) = _$BlockchainAddBundleStart;

  String get walletPrivateKey;
  Bundle get bundle;
  ActionResult? get onResult;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $BlockchainAddBundleStartCopyWith<BlockchainAddBundleStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainAddBundleSuccessfulCopyWith<$Res> implements $BlockchainAddBundleCopyWith<$Res> {
  factory $BlockchainAddBundleSuccessfulCopyWith(
          BlockchainAddBundleSuccessful value, $Res Function(BlockchainAddBundleSuccessful) then) =
      _$BlockchainAddBundleSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$BlockchainAddBundleSuccessfulCopyWithImpl<$Res> extends _$BlockchainAddBundleCopyWithImpl<$Res>
    implements $BlockchainAddBundleSuccessfulCopyWith<$Res> {
  _$BlockchainAddBundleSuccessfulCopyWithImpl(
      BlockchainAddBundleSuccessful _value, $Res Function(BlockchainAddBundleSuccessful) _then)
      : super(_value, (v) => _then(v as BlockchainAddBundleSuccessful));

  @override
  BlockchainAddBundleSuccessful get _value => super._value as BlockchainAddBundleSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(BlockchainAddBundleSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$BlockchainAddBundleSuccessful implements BlockchainAddBundleSuccessful {
  const _$BlockchainAddBundleSuccessful([this.pendingId = _kBlockchainAddBundlePendingId]);

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'BlockchainAddBundle.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockchainAddBundleSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $BlockchainAddBundleSuccessfulCopyWith<BlockchainAddBundleSuccessful> get copyWith =>
      _$BlockchainAddBundleSuccessfulCopyWithImpl<BlockchainAddBundleSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlockchainAddBundleStart value) start,
    required TResult Function(BlockchainAddBundleSuccessful value) successful,
    required TResult Function(BlockchainAddBundleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BlockchainAddBundleStart value)? start,
    TResult Function(BlockchainAddBundleSuccessful value)? successful,
    TResult Function(BlockchainAddBundleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlockchainAddBundleStart value)? start,
    TResult Function(BlockchainAddBundleSuccessful value)? successful,
    TResult Function(BlockchainAddBundleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class BlockchainAddBundleSuccessful implements BlockchainAddBundle, ActionDone {
  const factory BlockchainAddBundleSuccessful([String pendingId]) = _$BlockchainAddBundleSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $BlockchainAddBundleSuccessfulCopyWith<BlockchainAddBundleSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainAddBundleErrorCopyWith<$Res> implements $BlockchainAddBundleCopyWith<$Res> {
  factory $BlockchainAddBundleErrorCopyWith(
          BlockchainAddBundleError value, $Res Function(BlockchainAddBundleError) then) =
      _$BlockchainAddBundleErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$BlockchainAddBundleErrorCopyWithImpl<$Res> extends _$BlockchainAddBundleCopyWithImpl<$Res>
    implements $BlockchainAddBundleErrorCopyWith<$Res> {
  _$BlockchainAddBundleErrorCopyWithImpl(BlockchainAddBundleError _value, $Res Function(BlockchainAddBundleError) _then)
      : super(_value, (v) => _then(v as BlockchainAddBundleError));

  @override
  BlockchainAddBundleError get _value => super._value as BlockchainAddBundleError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(BlockchainAddBundleError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$BlockchainAddBundleError implements BlockchainAddBundleError {
  const _$BlockchainAddBundleError(this.error, this.stackTrace, [this.pendingId = _kBlockchainAddBundlePendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'BlockchainAddBundle.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockchainAddBundleError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $BlockchainAddBundleErrorCopyWith<BlockchainAddBundleError> get copyWith =>
      _$BlockchainAddBundleErrorCopyWithImpl<BlockchainAddBundleError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletPrivateKey, Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlockchainAddBundleStart value) start,
    required TResult Function(BlockchainAddBundleSuccessful value) successful,
    required TResult Function(BlockchainAddBundleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BlockchainAddBundleStart value)? start,
    TResult Function(BlockchainAddBundleSuccessful value)? successful,
    TResult Function(BlockchainAddBundleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlockchainAddBundleStart value)? start,
    TResult Function(BlockchainAddBundleSuccessful value)? successful,
    TResult Function(BlockchainAddBundleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlockchainAddBundleError implements BlockchainAddBundle, ActionDone, ErrorAction {
  const factory BlockchainAddBundleError(Object error, StackTrace stackTrace, [String pendingId]) =
      _$BlockchainAddBundleError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $BlockchainAddBundleErrorCopyWith<BlockchainAddBundleError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$BlockchainRestoreLatestBundleTearOff {
  const _$BlockchainRestoreLatestBundleTearOff();

  BlockchainRestoreLatestBundleStart start(
      {required String walletPrivateKey,
      ActionResult? onResult,
      String pendingId = _kBlockchainRestoreLatestBundlePendingId}) {
    return BlockchainRestoreLatestBundleStart(
      walletPrivateKey: walletPrivateKey,
      onResult: onResult,
      pendingId: pendingId,
    );
  }

  BlockchainRestoreLatestBundleSuccessful successful(
      {required Bundle bundle, String pendingId = _kBlockchainRestoreLatestBundlePendingId}) {
    return BlockchainRestoreLatestBundleSuccessful(
      bundle: bundle,
      pendingId: pendingId,
    );
  }

  BlockchainRestoreLatestBundleError error(Object error, StackTrace stackTrace,
      [String pendingId = _kBlockchainRestoreLatestBundlePendingId]) {
    return BlockchainRestoreLatestBundleError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $BlockchainRestoreLatestBundle = _$BlockchainRestoreLatestBundleTearOff();

/// @nodoc
mixin _$BlockchainRestoreLatestBundle {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlockchainRestoreLatestBundleStart value) start,
    required TResult Function(BlockchainRestoreLatestBundleSuccessful value) successful,
    required TResult Function(BlockchainRestoreLatestBundleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BlockchainRestoreLatestBundleStart value)? start,
    TResult Function(BlockchainRestoreLatestBundleSuccessful value)? successful,
    TResult Function(BlockchainRestoreLatestBundleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlockchainRestoreLatestBundleStart value)? start,
    TResult Function(BlockchainRestoreLatestBundleSuccessful value)? successful,
    TResult Function(BlockchainRestoreLatestBundleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlockchainRestoreLatestBundleCopyWith<BlockchainRestoreLatestBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainRestoreLatestBundleCopyWith<$Res> {
  factory $BlockchainRestoreLatestBundleCopyWith(
          BlockchainRestoreLatestBundle value, $Res Function(BlockchainRestoreLatestBundle) then) =
      _$BlockchainRestoreLatestBundleCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$BlockchainRestoreLatestBundleCopyWithImpl<$Res> implements $BlockchainRestoreLatestBundleCopyWith<$Res> {
  _$BlockchainRestoreLatestBundleCopyWithImpl(this._value, this._then);

  final BlockchainRestoreLatestBundle _value;
  // ignore: unused_field
  final $Res Function(BlockchainRestoreLatestBundle) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $BlockchainRestoreLatestBundleStartCopyWith<$Res>
    implements $BlockchainRestoreLatestBundleCopyWith<$Res> {
  factory $BlockchainRestoreLatestBundleStartCopyWith(
          BlockchainRestoreLatestBundleStart value, $Res Function(BlockchainRestoreLatestBundleStart) then) =
      _$BlockchainRestoreLatestBundleStartCopyWithImpl<$Res>;
  @override
  $Res call({String walletPrivateKey, ActionResult? onResult, String pendingId});
}

/// @nodoc
class _$BlockchainRestoreLatestBundleStartCopyWithImpl<$Res> extends _$BlockchainRestoreLatestBundleCopyWithImpl<$Res>
    implements $BlockchainRestoreLatestBundleStartCopyWith<$Res> {
  _$BlockchainRestoreLatestBundleStartCopyWithImpl(
      BlockchainRestoreLatestBundleStart _value, $Res Function(BlockchainRestoreLatestBundleStart) _then)
      : super(_value, (v) => _then(v as BlockchainRestoreLatestBundleStart));

  @override
  BlockchainRestoreLatestBundleStart get _value => super._value as BlockchainRestoreLatestBundleStart;

  @override
  $Res call({
    Object? walletPrivateKey = freezed,
    Object? onResult = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(BlockchainRestoreLatestBundleStart(
      walletPrivateKey: walletPrivateKey == freezed
          ? _value.walletPrivateKey
          : walletPrivateKey // ignore: cast_nullable_to_non_nullable
              as String,
      onResult: onResult == freezed
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult?,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$BlockchainRestoreLatestBundleStart implements BlockchainRestoreLatestBundleStart {
  const _$BlockchainRestoreLatestBundleStart(
      {required this.walletPrivateKey, this.onResult, this.pendingId = _kBlockchainRestoreLatestBundlePendingId});

  @override
  final String walletPrivateKey;
  @override
  final ActionResult? onResult;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'BlockchainRestoreLatestBundle.start(walletPrivateKey: $walletPrivateKey, onResult: $onResult, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockchainRestoreLatestBundleStart &&
            const DeepCollectionEquality().equals(other.walletPrivateKey, walletPrivateKey) &&
            (identical(other.onResult, onResult) || other.onResult == onResult) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(walletPrivateKey), onResult,
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $BlockchainRestoreLatestBundleStartCopyWith<BlockchainRestoreLatestBundleStart> get copyWith =>
      _$BlockchainRestoreLatestBundleStartCopyWithImpl<BlockchainRestoreLatestBundleStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(walletPrivateKey, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(walletPrivateKey, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(walletPrivateKey, onResult, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlockchainRestoreLatestBundleStart value) start,
    required TResult Function(BlockchainRestoreLatestBundleSuccessful value) successful,
    required TResult Function(BlockchainRestoreLatestBundleError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BlockchainRestoreLatestBundleStart value)? start,
    TResult Function(BlockchainRestoreLatestBundleSuccessful value)? successful,
    TResult Function(BlockchainRestoreLatestBundleError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlockchainRestoreLatestBundleStart value)? start,
    TResult Function(BlockchainRestoreLatestBundleSuccessful value)? successful,
    TResult Function(BlockchainRestoreLatestBundleError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class BlockchainRestoreLatestBundleStart implements BlockchainRestoreLatestBundle, ActionStart {
  const factory BlockchainRestoreLatestBundleStart(
      {required String walletPrivateKey,
      ActionResult? onResult,
      String pendingId}) = _$BlockchainRestoreLatestBundleStart;

  String get walletPrivateKey;
  ActionResult? get onResult;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $BlockchainRestoreLatestBundleStartCopyWith<BlockchainRestoreLatestBundleStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainRestoreLatestBundleSuccessfulCopyWith<$Res>
    implements $BlockchainRestoreLatestBundleCopyWith<$Res> {
  factory $BlockchainRestoreLatestBundleSuccessfulCopyWith(
          BlockchainRestoreLatestBundleSuccessful value, $Res Function(BlockchainRestoreLatestBundleSuccessful) then) =
      _$BlockchainRestoreLatestBundleSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({Bundle bundle, String pendingId});

  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$BlockchainRestoreLatestBundleSuccessfulCopyWithImpl<$Res>
    extends _$BlockchainRestoreLatestBundleCopyWithImpl<$Res>
    implements $BlockchainRestoreLatestBundleSuccessfulCopyWith<$Res> {
  _$BlockchainRestoreLatestBundleSuccessfulCopyWithImpl(
      BlockchainRestoreLatestBundleSuccessful _value, $Res Function(BlockchainRestoreLatestBundleSuccessful) _then)
      : super(_value, (v) => _then(v as BlockchainRestoreLatestBundleSuccessful));

  @override
  BlockchainRestoreLatestBundleSuccessful get _value => super._value as BlockchainRestoreLatestBundleSuccessful;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(BlockchainRestoreLatestBundleSuccessful(
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
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

@Implements<ActionDone>()
class _$BlockchainRestoreLatestBundleSuccessful implements BlockchainRestoreLatestBundleSuccessful {
  const _$BlockchainRestoreLatestBundleSuccessful(
      {required this.bundle, this.pendingId = _kBlockchainRestoreLatestBundlePendingId});

  @override
  final Bundle bundle;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'BlockchainRestoreLatestBundle.successful(bundle: $bundle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockchainRestoreLatestBundleSuccessful &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bundle), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $BlockchainRestoreLatestBundleSuccessfulCopyWith<BlockchainRestoreLatestBundleSuccessful> get copyWith =>
      _$BlockchainRestoreLatestBundleSuccessfulCopyWithImpl<BlockchainRestoreLatestBundleSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(bundle, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlockchainRestoreLatestBundleStart value) start,
    required TResult Function(BlockchainRestoreLatestBundleSuccessful value) successful,
    required TResult Function(BlockchainRestoreLatestBundleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BlockchainRestoreLatestBundleStart value)? start,
    TResult Function(BlockchainRestoreLatestBundleSuccessful value)? successful,
    TResult Function(BlockchainRestoreLatestBundleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlockchainRestoreLatestBundleStart value)? start,
    TResult Function(BlockchainRestoreLatestBundleSuccessful value)? successful,
    TResult Function(BlockchainRestoreLatestBundleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class BlockchainRestoreLatestBundleSuccessful implements BlockchainRestoreLatestBundle, ActionDone {
  const factory BlockchainRestoreLatestBundleSuccessful({required Bundle bundle, String pendingId}) =
      _$BlockchainRestoreLatestBundleSuccessful;

  Bundle get bundle;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $BlockchainRestoreLatestBundleSuccessfulCopyWith<BlockchainRestoreLatestBundleSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainRestoreLatestBundleErrorCopyWith<$Res>
    implements $BlockchainRestoreLatestBundleCopyWith<$Res> {
  factory $BlockchainRestoreLatestBundleErrorCopyWith(
          BlockchainRestoreLatestBundleError value, $Res Function(BlockchainRestoreLatestBundleError) then) =
      _$BlockchainRestoreLatestBundleErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$BlockchainRestoreLatestBundleErrorCopyWithImpl<$Res> extends _$BlockchainRestoreLatestBundleCopyWithImpl<$Res>
    implements $BlockchainRestoreLatestBundleErrorCopyWith<$Res> {
  _$BlockchainRestoreLatestBundleErrorCopyWithImpl(
      BlockchainRestoreLatestBundleError _value, $Res Function(BlockchainRestoreLatestBundleError) _then)
      : super(_value, (v) => _then(v as BlockchainRestoreLatestBundleError));

  @override
  BlockchainRestoreLatestBundleError get _value => super._value as BlockchainRestoreLatestBundleError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(BlockchainRestoreLatestBundleError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$BlockchainRestoreLatestBundleError implements BlockchainRestoreLatestBundleError {
  const _$BlockchainRestoreLatestBundleError(this.error, this.stackTrace,
      [this.pendingId = _kBlockchainRestoreLatestBundlePendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'BlockchainRestoreLatestBundle.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockchainRestoreLatestBundleError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $BlockchainRestoreLatestBundleErrorCopyWith<BlockchainRestoreLatestBundleError> get copyWith =>
      _$BlockchainRestoreLatestBundleErrorCopyWithImpl<BlockchainRestoreLatestBundleError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String walletPrivateKey, ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlockchainRestoreLatestBundleStart value) start,
    required TResult Function(BlockchainRestoreLatestBundleSuccessful value) successful,
    required TResult Function(BlockchainRestoreLatestBundleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BlockchainRestoreLatestBundleStart value)? start,
    TResult Function(BlockchainRestoreLatestBundleSuccessful value)? successful,
    TResult Function(BlockchainRestoreLatestBundleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlockchainRestoreLatestBundleStart value)? start,
    TResult Function(BlockchainRestoreLatestBundleSuccessful value)? successful,
    TResult Function(BlockchainRestoreLatestBundleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BlockchainRestoreLatestBundleError implements BlockchainRestoreLatestBundle, ActionDone, ErrorAction {
  const factory BlockchainRestoreLatestBundleError(Object error, StackTrace stackTrace, [String pendingId]) =
      _$BlockchainRestoreLatestBundleError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $BlockchainRestoreLatestBundleErrorCopyWith<BlockchainRestoreLatestBundleError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetMasterKeyHashTearOff {
  const _$GetMasterKeyHashTearOff();

  GetMasterKeyHashStart start({String pendingId = _kGetMasterKeyHashPendingId}) {
    return GetMasterKeyHashStart(
      pendingId: pendingId,
    );
  }

  GetMasterKeyHashSuccessful successful(
      {required String? masterKeyHash, String pendingId = _kGetMasterKeyHashPendingId}) {
    return GetMasterKeyHashSuccessful(
      masterKeyHash: masterKeyHash,
      pendingId: pendingId,
    );
  }

  GetMasterKeyHashError error(Object error, StackTrace stackTrace, [String pendingId = _kGetMasterKeyHashPendingId]) {
    return GetMasterKeyHashError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $GetMasterKeyHash = _$GetMasterKeyHashTearOff();

/// @nodoc
mixin _$GetMasterKeyHash {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String? masterKeyHash, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String? masterKeyHash, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String? masterKeyHash, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMasterKeyHashStart value) start,
    required TResult Function(GetMasterKeyHashSuccessful value) successful,
    required TResult Function(GetMasterKeyHashError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMasterKeyHashStart value)? start,
    TResult Function(GetMasterKeyHashSuccessful value)? successful,
    TResult Function(GetMasterKeyHashError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMasterKeyHashStart value)? start,
    TResult Function(GetMasterKeyHashSuccessful value)? successful,
    TResult Function(GetMasterKeyHashError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetMasterKeyHashCopyWith<GetMasterKeyHash> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMasterKeyHashCopyWith<$Res> {
  factory $GetMasterKeyHashCopyWith(GetMasterKeyHash value, $Res Function(GetMasterKeyHash) then) =
      _$GetMasterKeyHashCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$GetMasterKeyHashCopyWithImpl<$Res> implements $GetMasterKeyHashCopyWith<$Res> {
  _$GetMasterKeyHashCopyWithImpl(this._value, this._then);

  final GetMasterKeyHash _value;
  // ignore: unused_field
  final $Res Function(GetMasterKeyHash) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetMasterKeyHashStartCopyWith<$Res> implements $GetMasterKeyHashCopyWith<$Res> {
  factory $GetMasterKeyHashStartCopyWith(GetMasterKeyHashStart value, $Res Function(GetMasterKeyHashStart) then) =
      _$GetMasterKeyHashStartCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$GetMasterKeyHashStartCopyWithImpl<$Res> extends _$GetMasterKeyHashCopyWithImpl<$Res>
    implements $GetMasterKeyHashStartCopyWith<$Res> {
  _$GetMasterKeyHashStartCopyWithImpl(GetMasterKeyHashStart _value, $Res Function(GetMasterKeyHashStart) _then)
      : super(_value, (v) => _then(v as GetMasterKeyHashStart));

  @override
  GetMasterKeyHashStart get _value => super._value as GetMasterKeyHashStart;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(GetMasterKeyHashStart(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$GetMasterKeyHashStart implements GetMasterKeyHashStart {
  const _$GetMasterKeyHashStart({this.pendingId = _kGetMasterKeyHashPendingId});

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetMasterKeyHash.start(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMasterKeyHashStart &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetMasterKeyHashStartCopyWith<GetMasterKeyHashStart> get copyWith =>
      _$GetMasterKeyHashStartCopyWithImpl<GetMasterKeyHashStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String? masterKeyHash, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String? masterKeyHash, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String? masterKeyHash, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMasterKeyHashStart value) start,
    required TResult Function(GetMasterKeyHashSuccessful value) successful,
    required TResult Function(GetMasterKeyHashError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMasterKeyHashStart value)? start,
    TResult Function(GetMasterKeyHashSuccessful value)? successful,
    TResult Function(GetMasterKeyHashError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMasterKeyHashStart value)? start,
    TResult Function(GetMasterKeyHashSuccessful value)? successful,
    TResult Function(GetMasterKeyHashError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetMasterKeyHashStart implements GetMasterKeyHash, ActionStart {
  const factory GetMasterKeyHashStart({String pendingId}) = _$GetMasterKeyHashStart;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetMasterKeyHashStartCopyWith<GetMasterKeyHashStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMasterKeyHashSuccessfulCopyWith<$Res> implements $GetMasterKeyHashCopyWith<$Res> {
  factory $GetMasterKeyHashSuccessfulCopyWith(
          GetMasterKeyHashSuccessful value, $Res Function(GetMasterKeyHashSuccessful) then) =
      _$GetMasterKeyHashSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String? masterKeyHash, String pendingId});
}

/// @nodoc
class _$GetMasterKeyHashSuccessfulCopyWithImpl<$Res> extends _$GetMasterKeyHashCopyWithImpl<$Res>
    implements $GetMasterKeyHashSuccessfulCopyWith<$Res> {
  _$GetMasterKeyHashSuccessfulCopyWithImpl(
      GetMasterKeyHashSuccessful _value, $Res Function(GetMasterKeyHashSuccessful) _then)
      : super(_value, (v) => _then(v as GetMasterKeyHashSuccessful));

  @override
  GetMasterKeyHashSuccessful get _value => super._value as GetMasterKeyHashSuccessful;

  @override
  $Res call({
    Object? masterKeyHash = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetMasterKeyHashSuccessful(
      masterKeyHash: masterKeyHash == freezed
          ? _value.masterKeyHash
          : masterKeyHash // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$GetMasterKeyHashSuccessful implements GetMasterKeyHashSuccessful {
  const _$GetMasterKeyHashSuccessful({required this.masterKeyHash, this.pendingId = _kGetMasterKeyHashPendingId});

  @override
  final String? masterKeyHash;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetMasterKeyHash.successful(masterKeyHash: $masterKeyHash, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMasterKeyHashSuccessful &&
            const DeepCollectionEquality().equals(other.masterKeyHash, masterKeyHash) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKeyHash), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetMasterKeyHashSuccessfulCopyWith<GetMasterKeyHashSuccessful> get copyWith =>
      _$GetMasterKeyHashSuccessfulCopyWithImpl<GetMasterKeyHashSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String? masterKeyHash, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(masterKeyHash, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String? masterKeyHash, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(masterKeyHash, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String? masterKeyHash, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(masterKeyHash, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMasterKeyHashStart value) start,
    required TResult Function(GetMasterKeyHashSuccessful value) successful,
    required TResult Function(GetMasterKeyHashError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMasterKeyHashStart value)? start,
    TResult Function(GetMasterKeyHashSuccessful value)? successful,
    TResult Function(GetMasterKeyHashError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMasterKeyHashStart value)? start,
    TResult Function(GetMasterKeyHashSuccessful value)? successful,
    TResult Function(GetMasterKeyHashError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetMasterKeyHashSuccessful implements GetMasterKeyHash, ActionDone {
  const factory GetMasterKeyHashSuccessful({required String? masterKeyHash, String pendingId}) =
      _$GetMasterKeyHashSuccessful;

  String? get masterKeyHash;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetMasterKeyHashSuccessfulCopyWith<GetMasterKeyHashSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMasterKeyHashErrorCopyWith<$Res> implements $GetMasterKeyHashCopyWith<$Res> {
  factory $GetMasterKeyHashErrorCopyWith(GetMasterKeyHashError value, $Res Function(GetMasterKeyHashError) then) =
      _$GetMasterKeyHashErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$GetMasterKeyHashErrorCopyWithImpl<$Res> extends _$GetMasterKeyHashCopyWithImpl<$Res>
    implements $GetMasterKeyHashErrorCopyWith<$Res> {
  _$GetMasterKeyHashErrorCopyWithImpl(GetMasterKeyHashError _value, $Res Function(GetMasterKeyHashError) _then)
      : super(_value, (v) => _then(v as GetMasterKeyHashError));

  @override
  GetMasterKeyHashError get _value => super._value as GetMasterKeyHashError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetMasterKeyHashError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$GetMasterKeyHashError implements GetMasterKeyHashError {
  const _$GetMasterKeyHashError(this.error, this.stackTrace, [this.pendingId = _kGetMasterKeyHashPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetMasterKeyHash.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetMasterKeyHashError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetMasterKeyHashErrorCopyWith<GetMasterKeyHashError> get copyWith =>
      _$GetMasterKeyHashErrorCopyWithImpl<GetMasterKeyHashError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String? masterKeyHash, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String? masterKeyHash, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String? masterKeyHash, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMasterKeyHashStart value) start,
    required TResult Function(GetMasterKeyHashSuccessful value) successful,
    required TResult Function(GetMasterKeyHashError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMasterKeyHashStart value)? start,
    TResult Function(GetMasterKeyHashSuccessful value)? successful,
    TResult Function(GetMasterKeyHashError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMasterKeyHashStart value)? start,
    TResult Function(GetMasterKeyHashSuccessful value)? successful,
    TResult Function(GetMasterKeyHashError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetMasterKeyHashError implements GetMasterKeyHash, ActionDone, ErrorAction {
  const factory GetMasterKeyHashError(Object error, StackTrace stackTrace, [String pendingId]) =
      _$GetMasterKeyHashError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetMasterKeyHashErrorCopyWith<GetMasterKeyHashError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreMasterKeyHashTearOff {
  const _$StoreMasterKeyHashTearOff();

  StoreMasterKeyHashStart start({required String? masterKeyHash, String pendingId = _kStoreMasterKeyHashPendingId}) {
    return StoreMasterKeyHashStart(
      masterKeyHash: masterKeyHash,
      pendingId: pendingId,
    );
  }

  StoreMasterKeyHashSuccessful successful({String pendingId = _kStoreMasterKeyHashPendingId}) {
    return StoreMasterKeyHashSuccessful(
      pendingId: pendingId,
    );
  }

  StoreMasterKeyHashError error(Object error, StackTrace stackTrace,
      [String pendingId = _kStoreMasterKeyHashPendingId]) {
    return StoreMasterKeyHashError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $StoreMasterKeyHash = _$StoreMasterKeyHashTearOff();

/// @nodoc
mixin _$StoreMasterKeyHash {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? masterKeyHash, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? masterKeyHash, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? masterKeyHash, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreMasterKeyHashStart value) start,
    required TResult Function(StoreMasterKeyHashSuccessful value) successful,
    required TResult Function(StoreMasterKeyHashError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreMasterKeyHashStart value)? start,
    TResult Function(StoreMasterKeyHashSuccessful value)? successful,
    TResult Function(StoreMasterKeyHashError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreMasterKeyHashStart value)? start,
    TResult Function(StoreMasterKeyHashSuccessful value)? successful,
    TResult Function(StoreMasterKeyHashError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreMasterKeyHashCopyWith<StoreMasterKeyHash> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreMasterKeyHashCopyWith<$Res> {
  factory $StoreMasterKeyHashCopyWith(StoreMasterKeyHash value, $Res Function(StoreMasterKeyHash) then) =
      _$StoreMasterKeyHashCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$StoreMasterKeyHashCopyWithImpl<$Res> implements $StoreMasterKeyHashCopyWith<$Res> {
  _$StoreMasterKeyHashCopyWithImpl(this._value, this._then);

  final StoreMasterKeyHash _value;
  // ignore: unused_field
  final $Res Function(StoreMasterKeyHash) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $StoreMasterKeyHashStartCopyWith<$Res> implements $StoreMasterKeyHashCopyWith<$Res> {
  factory $StoreMasterKeyHashStartCopyWith(StoreMasterKeyHashStart value, $Res Function(StoreMasterKeyHashStart) then) =
      _$StoreMasterKeyHashStartCopyWithImpl<$Res>;
  @override
  $Res call({String? masterKeyHash, String pendingId});
}

/// @nodoc
class _$StoreMasterKeyHashStartCopyWithImpl<$Res> extends _$StoreMasterKeyHashCopyWithImpl<$Res>
    implements $StoreMasterKeyHashStartCopyWith<$Res> {
  _$StoreMasterKeyHashStartCopyWithImpl(StoreMasterKeyHashStart _value, $Res Function(StoreMasterKeyHashStart) _then)
      : super(_value, (v) => _then(v as StoreMasterKeyHashStart));

  @override
  StoreMasterKeyHashStart get _value => super._value as StoreMasterKeyHashStart;

  @override
  $Res call({
    Object? masterKeyHash = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(StoreMasterKeyHashStart(
      masterKeyHash: masterKeyHash == freezed
          ? _value.masterKeyHash
          : masterKeyHash // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$StoreMasterKeyHashStart implements StoreMasterKeyHashStart {
  const _$StoreMasterKeyHashStart({required this.masterKeyHash, this.pendingId = _kStoreMasterKeyHashPendingId});

  @override
  final String? masterKeyHash;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreMasterKeyHash.start(masterKeyHash: $masterKeyHash, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreMasterKeyHashStart &&
            const DeepCollectionEquality().equals(other.masterKeyHash, masterKeyHash) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKeyHash), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreMasterKeyHashStartCopyWith<StoreMasterKeyHashStart> get copyWith =>
      _$StoreMasterKeyHashStartCopyWithImpl<StoreMasterKeyHashStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? masterKeyHash, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(masterKeyHash, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? masterKeyHash, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(masterKeyHash, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? masterKeyHash, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(masterKeyHash, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreMasterKeyHashStart value) start,
    required TResult Function(StoreMasterKeyHashSuccessful value) successful,
    required TResult Function(StoreMasterKeyHashError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreMasterKeyHashStart value)? start,
    TResult Function(StoreMasterKeyHashSuccessful value)? successful,
    TResult Function(StoreMasterKeyHashError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreMasterKeyHashStart value)? start,
    TResult Function(StoreMasterKeyHashSuccessful value)? successful,
    TResult Function(StoreMasterKeyHashError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StoreMasterKeyHashStart implements StoreMasterKeyHash, ActionStart {
  const factory StoreMasterKeyHashStart({required String? masterKeyHash, String pendingId}) = _$StoreMasterKeyHashStart;

  String? get masterKeyHash;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreMasterKeyHashStartCopyWith<StoreMasterKeyHashStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreMasterKeyHashSuccessfulCopyWith<$Res> implements $StoreMasterKeyHashCopyWith<$Res> {
  factory $StoreMasterKeyHashSuccessfulCopyWith(
          StoreMasterKeyHashSuccessful value, $Res Function(StoreMasterKeyHashSuccessful) then) =
      _$StoreMasterKeyHashSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$StoreMasterKeyHashSuccessfulCopyWithImpl<$Res> extends _$StoreMasterKeyHashCopyWithImpl<$Res>
    implements $StoreMasterKeyHashSuccessfulCopyWith<$Res> {
  _$StoreMasterKeyHashSuccessfulCopyWithImpl(
      StoreMasterKeyHashSuccessful _value, $Res Function(StoreMasterKeyHashSuccessful) _then)
      : super(_value, (v) => _then(v as StoreMasterKeyHashSuccessful));

  @override
  StoreMasterKeyHashSuccessful get _value => super._value as StoreMasterKeyHashSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(StoreMasterKeyHashSuccessful(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$StoreMasterKeyHashSuccessful implements StoreMasterKeyHashSuccessful {
  const _$StoreMasterKeyHashSuccessful({this.pendingId = _kStoreMasterKeyHashPendingId});

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreMasterKeyHash.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreMasterKeyHashSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreMasterKeyHashSuccessfulCopyWith<StoreMasterKeyHashSuccessful> get copyWith =>
      _$StoreMasterKeyHashSuccessfulCopyWithImpl<StoreMasterKeyHashSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? masterKeyHash, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? masterKeyHash, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? masterKeyHash, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreMasterKeyHashStart value) start,
    required TResult Function(StoreMasterKeyHashSuccessful value) successful,
    required TResult Function(StoreMasterKeyHashError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreMasterKeyHashStart value)? start,
    TResult Function(StoreMasterKeyHashSuccessful value)? successful,
    TResult Function(StoreMasterKeyHashError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreMasterKeyHashStart value)? start,
    TResult Function(StoreMasterKeyHashSuccessful value)? successful,
    TResult Function(StoreMasterKeyHashError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class StoreMasterKeyHashSuccessful implements StoreMasterKeyHash, ActionDone {
  const factory StoreMasterKeyHashSuccessful({String pendingId}) = _$StoreMasterKeyHashSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreMasterKeyHashSuccessfulCopyWith<StoreMasterKeyHashSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreMasterKeyHashErrorCopyWith<$Res> implements $StoreMasterKeyHashCopyWith<$Res> {
  factory $StoreMasterKeyHashErrorCopyWith(StoreMasterKeyHashError value, $Res Function(StoreMasterKeyHashError) then) =
      _$StoreMasterKeyHashErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$StoreMasterKeyHashErrorCopyWithImpl<$Res> extends _$StoreMasterKeyHashCopyWithImpl<$Res>
    implements $StoreMasterKeyHashErrorCopyWith<$Res> {
  _$StoreMasterKeyHashErrorCopyWithImpl(StoreMasterKeyHashError _value, $Res Function(StoreMasterKeyHashError) _then)
      : super(_value, (v) => _then(v as StoreMasterKeyHashError));

  @override
  StoreMasterKeyHashError get _value => super._value as StoreMasterKeyHashError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(StoreMasterKeyHashError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$StoreMasterKeyHashError implements StoreMasterKeyHashError {
  const _$StoreMasterKeyHashError(this.error, this.stackTrace, [this.pendingId = _kStoreMasterKeyHashPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreMasterKeyHash.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreMasterKeyHashError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreMasterKeyHashErrorCopyWith<StoreMasterKeyHashError> get copyWith =>
      _$StoreMasterKeyHashErrorCopyWithImpl<StoreMasterKeyHashError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? masterKeyHash, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? masterKeyHash, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? masterKeyHash, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreMasterKeyHashStart value) start,
    required TResult Function(StoreMasterKeyHashSuccessful value) successful,
    required TResult Function(StoreMasterKeyHashError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreMasterKeyHashStart value)? start,
    TResult Function(StoreMasterKeyHashSuccessful value)? successful,
    TResult Function(StoreMasterKeyHashError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreMasterKeyHashStart value)? start,
    TResult Function(StoreMasterKeyHashSuccessful value)? successful,
    TResult Function(StoreMasterKeyHashError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StoreMasterKeyHashError implements StoreMasterKeyHash, ActionDone, ErrorAction {
  const factory StoreMasterKeyHashError(Object error, StackTrace stackTrace, [String pendingId]) =
      _$StoreMasterKeyHashError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreMasterKeyHashErrorCopyWith<StoreMasterKeyHashError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreBundleTearOff {
  const _$StoreBundleTearOff();

  StoreBundleStart start({required Bundle bundle, String pendingId = _kStoreBundlePendingId}) {
    return StoreBundleStart(
      bundle: bundle,
      pendingId: pendingId,
    );
  }

  StoreBundleSuccessful successful([String pendingId = _kStoreBundlePendingId]) {
    return StoreBundleSuccessful(
      pendingId,
    );
  }

  StoreBundleError error(Object error, StackTrace stackTrace, [String pendingId = _kStoreBundlePendingId]) {
    return StoreBundleError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $StoreBundle = _$StoreBundleTearOff();

/// @nodoc
mixin _$StoreBundle {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bundle bundle, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreBundleStart value) start,
    required TResult Function(StoreBundleSuccessful value) successful,
    required TResult Function(StoreBundleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreBundleStart value)? start,
    TResult Function(StoreBundleSuccessful value)? successful,
    TResult Function(StoreBundleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreBundleStart value)? start,
    TResult Function(StoreBundleSuccessful value)? successful,
    TResult Function(StoreBundleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreBundleCopyWith<StoreBundle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreBundleCopyWith<$Res> {
  factory $StoreBundleCopyWith(StoreBundle value, $Res Function(StoreBundle) then) = _$StoreBundleCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$StoreBundleCopyWithImpl<$Res> implements $StoreBundleCopyWith<$Res> {
  _$StoreBundleCopyWithImpl(this._value, this._then);

  final StoreBundle _value;
  // ignore: unused_field
  final $Res Function(StoreBundle) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $StoreBundleStartCopyWith<$Res> implements $StoreBundleCopyWith<$Res> {
  factory $StoreBundleStartCopyWith(StoreBundleStart value, $Res Function(StoreBundleStart) then) =
      _$StoreBundleStartCopyWithImpl<$Res>;
  @override
  $Res call({Bundle bundle, String pendingId});

  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$StoreBundleStartCopyWithImpl<$Res> extends _$StoreBundleCopyWithImpl<$Res>
    implements $StoreBundleStartCopyWith<$Res> {
  _$StoreBundleStartCopyWithImpl(StoreBundleStart _value, $Res Function(StoreBundleStart) _then)
      : super(_value, (v) => _then(v as StoreBundleStart));

  @override
  StoreBundleStart get _value => super._value as StoreBundleStart;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(StoreBundleStart(
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
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

@Implements<ActionStart>()
class _$StoreBundleStart implements StoreBundleStart {
  const _$StoreBundleStart({required this.bundle, this.pendingId = _kStoreBundlePendingId});

  @override
  final Bundle bundle;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreBundle.start(bundle: $bundle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreBundleStart &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bundle), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreBundleStartCopyWith<StoreBundleStart> get copyWith =>
      _$StoreBundleStartCopyWithImpl<StoreBundleStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bundle bundle, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(bundle, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreBundleStart value) start,
    required TResult Function(StoreBundleSuccessful value) successful,
    required TResult Function(StoreBundleError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreBundleStart value)? start,
    TResult Function(StoreBundleSuccessful value)? successful,
    TResult Function(StoreBundleError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreBundleStart value)? start,
    TResult Function(StoreBundleSuccessful value)? successful,
    TResult Function(StoreBundleError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StoreBundleStart implements StoreBundle, ActionStart {
  const factory StoreBundleStart({required Bundle bundle, String pendingId}) = _$StoreBundleStart;

  Bundle get bundle;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreBundleStartCopyWith<StoreBundleStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreBundleSuccessfulCopyWith<$Res> implements $StoreBundleCopyWith<$Res> {
  factory $StoreBundleSuccessfulCopyWith(StoreBundleSuccessful value, $Res Function(StoreBundleSuccessful) then) =
      _$StoreBundleSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$StoreBundleSuccessfulCopyWithImpl<$Res> extends _$StoreBundleCopyWithImpl<$Res>
    implements $StoreBundleSuccessfulCopyWith<$Res> {
  _$StoreBundleSuccessfulCopyWithImpl(StoreBundleSuccessful _value, $Res Function(StoreBundleSuccessful) _then)
      : super(_value, (v) => _then(v as StoreBundleSuccessful));

  @override
  StoreBundleSuccessful get _value => super._value as StoreBundleSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(StoreBundleSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$StoreBundleSuccessful implements StoreBundleSuccessful {
  const _$StoreBundleSuccessful([this.pendingId = _kStoreBundlePendingId]);

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreBundle.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreBundleSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreBundleSuccessfulCopyWith<StoreBundleSuccessful> get copyWith =>
      _$StoreBundleSuccessfulCopyWithImpl<StoreBundleSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bundle bundle, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreBundleStart value) start,
    required TResult Function(StoreBundleSuccessful value) successful,
    required TResult Function(StoreBundleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreBundleStart value)? start,
    TResult Function(StoreBundleSuccessful value)? successful,
    TResult Function(StoreBundleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreBundleStart value)? start,
    TResult Function(StoreBundleSuccessful value)? successful,
    TResult Function(StoreBundleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class StoreBundleSuccessful implements StoreBundle, ActionDone {
  const factory StoreBundleSuccessful([String pendingId]) = _$StoreBundleSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreBundleSuccessfulCopyWith<StoreBundleSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreBundleErrorCopyWith<$Res> implements $StoreBundleCopyWith<$Res> {
  factory $StoreBundleErrorCopyWith(StoreBundleError value, $Res Function(StoreBundleError) then) =
      _$StoreBundleErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$StoreBundleErrorCopyWithImpl<$Res> extends _$StoreBundleCopyWithImpl<$Res>
    implements $StoreBundleErrorCopyWith<$Res> {
  _$StoreBundleErrorCopyWithImpl(StoreBundleError _value, $Res Function(StoreBundleError) _then)
      : super(_value, (v) => _then(v as StoreBundleError));

  @override
  StoreBundleError get _value => super._value as StoreBundleError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(StoreBundleError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$StoreBundleError implements StoreBundleError {
  const _$StoreBundleError(this.error, this.stackTrace, [this.pendingId = _kStoreBundlePendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreBundle.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreBundleError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreBundleErrorCopyWith<StoreBundleError> get copyWith =>
      _$StoreBundleErrorCopyWithImpl<StoreBundleError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bundle bundle, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreBundleStart value) start,
    required TResult Function(StoreBundleSuccessful value) successful,
    required TResult Function(StoreBundleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreBundleStart value)? start,
    TResult Function(StoreBundleSuccessful value)? successful,
    TResult Function(StoreBundleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreBundleStart value)? start,
    TResult Function(StoreBundleSuccessful value)? successful,
    TResult Function(StoreBundleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StoreBundleError implements StoreBundle, ActionDone, ErrorAction {
  const factory StoreBundleError(Object error, StackTrace stackTrace, [String pendingId]) = _$StoreBundleError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreBundleErrorCopyWith<StoreBundleError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetBundleTearOff {
  const _$GetBundleTearOff();

  GetBundleStart start({required String masterKey, String pendingId = _kGetBundlePendingId}) {
    return GetBundleStart(
      masterKey: masterKey,
      pendingId: pendingId,
    );
  }

  GetBundleSuccessful successful({required Bundle bundle, String pendingId = _kGetBundlePendingId}) {
    return GetBundleSuccessful(
      bundle: bundle,
      pendingId: pendingId,
    );
  }

  GetBundleError error(Object error, StackTrace stackTrace, [String pendingId = _kGetBundlePendingId]) {
    return GetBundleError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $GetBundle = _$GetBundleTearOff();

/// @nodoc
mixin _$GetBundle {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBundleStart value) start,
    required TResult Function(GetBundleSuccessful value) successful,
    required TResult Function(GetBundleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetBundleStart value)? start,
    TResult Function(GetBundleSuccessful value)? successful,
    TResult Function(GetBundleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBundleStart value)? start,
    TResult Function(GetBundleSuccessful value)? successful,
    TResult Function(GetBundleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetBundleCopyWith<GetBundle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBundleCopyWith<$Res> {
  factory $GetBundleCopyWith(GetBundle value, $Res Function(GetBundle) then) = _$GetBundleCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$GetBundleCopyWithImpl<$Res> implements $GetBundleCopyWith<$Res> {
  _$GetBundleCopyWithImpl(this._value, this._then);

  final GetBundle _value;
  // ignore: unused_field
  final $Res Function(GetBundle) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetBundleStartCopyWith<$Res> implements $GetBundleCopyWith<$Res> {
  factory $GetBundleStartCopyWith(GetBundleStart value, $Res Function(GetBundleStart) then) =
      _$GetBundleStartCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String pendingId});
}

/// @nodoc
class _$GetBundleStartCopyWithImpl<$Res> extends _$GetBundleCopyWithImpl<$Res>
    implements $GetBundleStartCopyWith<$Res> {
  _$GetBundleStartCopyWithImpl(GetBundleStart _value, $Res Function(GetBundleStart) _then)
      : super(_value, (v) => _then(v as GetBundleStart));

  @override
  GetBundleStart get _value => super._value as GetBundleStart;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetBundleStart(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$GetBundleStart implements GetBundleStart {
  const _$GetBundleStart({required this.masterKey, this.pendingId = _kGetBundlePendingId});

  @override
  final String masterKey;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetBundle.start(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetBundleStart &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetBundleStartCopyWith<GetBundleStart> get copyWith =>
      _$GetBundleStartCopyWithImpl<GetBundleStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(masterKey, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBundleStart value) start,
    required TResult Function(GetBundleSuccessful value) successful,
    required TResult Function(GetBundleError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetBundleStart value)? start,
    TResult Function(GetBundleSuccessful value)? successful,
    TResult Function(GetBundleError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBundleStart value)? start,
    TResult Function(GetBundleSuccessful value)? successful,
    TResult Function(GetBundleError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetBundleStart implements GetBundle, ActionStart {
  const factory GetBundleStart({required String masterKey, String pendingId}) = _$GetBundleStart;

  String get masterKey;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetBundleStartCopyWith<GetBundleStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBundleSuccessfulCopyWith<$Res> implements $GetBundleCopyWith<$Res> {
  factory $GetBundleSuccessfulCopyWith(GetBundleSuccessful value, $Res Function(GetBundleSuccessful) then) =
      _$GetBundleSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({Bundle bundle, String pendingId});

  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$GetBundleSuccessfulCopyWithImpl<$Res> extends _$GetBundleCopyWithImpl<$Res>
    implements $GetBundleSuccessfulCopyWith<$Res> {
  _$GetBundleSuccessfulCopyWithImpl(GetBundleSuccessful _value, $Res Function(GetBundleSuccessful) _then)
      : super(_value, (v) => _then(v as GetBundleSuccessful));

  @override
  GetBundleSuccessful get _value => super._value as GetBundleSuccessful;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetBundleSuccessful(
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
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

@Implements<ActionDone>()
class _$GetBundleSuccessful implements GetBundleSuccessful {
  const _$GetBundleSuccessful({required this.bundle, this.pendingId = _kGetBundlePendingId});

  @override
  final Bundle bundle;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetBundle.successful(bundle: $bundle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetBundleSuccessful &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bundle), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetBundleSuccessfulCopyWith<GetBundleSuccessful> get copyWith =>
      _$GetBundleSuccessfulCopyWithImpl<GetBundleSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(bundle, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBundleStart value) start,
    required TResult Function(GetBundleSuccessful value) successful,
    required TResult Function(GetBundleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetBundleStart value)? start,
    TResult Function(GetBundleSuccessful value)? successful,
    TResult Function(GetBundleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBundleStart value)? start,
    TResult Function(GetBundleSuccessful value)? successful,
    TResult Function(GetBundleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetBundleSuccessful implements GetBundle, ActionDone {
  const factory GetBundleSuccessful({required Bundle bundle, String pendingId}) = _$GetBundleSuccessful;

  Bundle get bundle;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetBundleSuccessfulCopyWith<GetBundleSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBundleErrorCopyWith<$Res> implements $GetBundleCopyWith<$Res> {
  factory $GetBundleErrorCopyWith(GetBundleError value, $Res Function(GetBundleError) then) =
      _$GetBundleErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$GetBundleErrorCopyWithImpl<$Res> extends _$GetBundleCopyWithImpl<$Res>
    implements $GetBundleErrorCopyWith<$Res> {
  _$GetBundleErrorCopyWithImpl(GetBundleError _value, $Res Function(GetBundleError) _then)
      : super(_value, (v) => _then(v as GetBundleError));

  @override
  GetBundleError get _value => super._value as GetBundleError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetBundleError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$GetBundleError implements GetBundleError {
  const _$GetBundleError(this.error, this.stackTrace, [this.pendingId = _kGetBundlePendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetBundle.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetBundleError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetBundleErrorCopyWith<GetBundleError> get copyWith =>
      _$GetBundleErrorCopyWithImpl<GetBundleError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBundleStart value) start,
    required TResult Function(GetBundleSuccessful value) successful,
    required TResult Function(GetBundleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetBundleStart value)? start,
    TResult Function(GetBundleSuccessful value)? successful,
    TResult Function(GetBundleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBundleStart value)? start,
    TResult Function(GetBundleSuccessful value)? successful,
    TResult Function(GetBundleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetBundleError implements GetBundle, ActionDone, ErrorAction {
  const factory GetBundleError(Object error, StackTrace stackTrace, [String pendingId]) = _$GetBundleError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetBundleErrorCopyWith<GetBundleError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreWalletPrivateKeyTearOff {
  const _$StoreWalletPrivateKeyTearOff();

  StoreWalletPrivateKeyStart start({required String masterKey, String pendingId = _kStoreWalletPrivateKeyPendingId}) {
    return StoreWalletPrivateKeyStart(
      masterKey: masterKey,
      pendingId: pendingId,
    );
  }

  StoreWalletPrivateKeySuccessful successful([String pendingId = _kStoreWalletPrivateKeyPendingId]) {
    return StoreWalletPrivateKeySuccessful(
      pendingId,
    );
  }

  StoreWalletPrivateKeyError error(Object error, StackTrace stackTrace,
      [String pendingId = _kStoreWalletPrivateKeyPendingId]) {
    return StoreWalletPrivateKeyError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $StoreWalletPrivateKey = _$StoreWalletPrivateKeyTearOff();

/// @nodoc
mixin _$StoreWalletPrivateKey {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreWalletPrivateKeyStart value) start,
    required TResult Function(StoreWalletPrivateKeySuccessful value) successful,
    required TResult Function(StoreWalletPrivateKeyError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreWalletPrivateKeyStart value)? start,
    TResult Function(StoreWalletPrivateKeySuccessful value)? successful,
    TResult Function(StoreWalletPrivateKeyError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreWalletPrivateKeyStart value)? start,
    TResult Function(StoreWalletPrivateKeySuccessful value)? successful,
    TResult Function(StoreWalletPrivateKeyError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreWalletPrivateKeyCopyWith<StoreWalletPrivateKey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreWalletPrivateKeyCopyWith<$Res> {
  factory $StoreWalletPrivateKeyCopyWith(StoreWalletPrivateKey value, $Res Function(StoreWalletPrivateKey) then) =
      _$StoreWalletPrivateKeyCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$StoreWalletPrivateKeyCopyWithImpl<$Res> implements $StoreWalletPrivateKeyCopyWith<$Res> {
  _$StoreWalletPrivateKeyCopyWithImpl(this._value, this._then);

  final StoreWalletPrivateKey _value;
  // ignore: unused_field
  final $Res Function(StoreWalletPrivateKey) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $StoreWalletPrivateKeyStartCopyWith<$Res> implements $StoreWalletPrivateKeyCopyWith<$Res> {
  factory $StoreWalletPrivateKeyStartCopyWith(
          StoreWalletPrivateKeyStart value, $Res Function(StoreWalletPrivateKeyStart) then) =
      _$StoreWalletPrivateKeyStartCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String pendingId});
}

/// @nodoc
class _$StoreWalletPrivateKeyStartCopyWithImpl<$Res> extends _$StoreWalletPrivateKeyCopyWithImpl<$Res>
    implements $StoreWalletPrivateKeyStartCopyWith<$Res> {
  _$StoreWalletPrivateKeyStartCopyWithImpl(
      StoreWalletPrivateKeyStart _value, $Res Function(StoreWalletPrivateKeyStart) _then)
      : super(_value, (v) => _then(v as StoreWalletPrivateKeyStart));

  @override
  StoreWalletPrivateKeyStart get _value => super._value as StoreWalletPrivateKeyStart;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(StoreWalletPrivateKeyStart(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$StoreWalletPrivateKeyStart implements StoreWalletPrivateKeyStart {
  const _$StoreWalletPrivateKeyStart({required this.masterKey, this.pendingId = _kStoreWalletPrivateKeyPendingId});

  @override
  final String masterKey;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreWalletPrivateKey.start(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreWalletPrivateKeyStart &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreWalletPrivateKeyStartCopyWith<StoreWalletPrivateKeyStart> get copyWith =>
      _$StoreWalletPrivateKeyStartCopyWithImpl<StoreWalletPrivateKeyStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(masterKey, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreWalletPrivateKeyStart value) start,
    required TResult Function(StoreWalletPrivateKeySuccessful value) successful,
    required TResult Function(StoreWalletPrivateKeyError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreWalletPrivateKeyStart value)? start,
    TResult Function(StoreWalletPrivateKeySuccessful value)? successful,
    TResult Function(StoreWalletPrivateKeyError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreWalletPrivateKeyStart value)? start,
    TResult Function(StoreWalletPrivateKeySuccessful value)? successful,
    TResult Function(StoreWalletPrivateKeyError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StoreWalletPrivateKeyStart implements StoreWalletPrivateKey, ActionStart {
  const factory StoreWalletPrivateKeyStart({required String masterKey, String pendingId}) =
      _$StoreWalletPrivateKeyStart;

  String get masterKey;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreWalletPrivateKeyStartCopyWith<StoreWalletPrivateKeyStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreWalletPrivateKeySuccessfulCopyWith<$Res> implements $StoreWalletPrivateKeyCopyWith<$Res> {
  factory $StoreWalletPrivateKeySuccessfulCopyWith(
          StoreWalletPrivateKeySuccessful value, $Res Function(StoreWalletPrivateKeySuccessful) then) =
      _$StoreWalletPrivateKeySuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$StoreWalletPrivateKeySuccessfulCopyWithImpl<$Res> extends _$StoreWalletPrivateKeyCopyWithImpl<$Res>
    implements $StoreWalletPrivateKeySuccessfulCopyWith<$Res> {
  _$StoreWalletPrivateKeySuccessfulCopyWithImpl(
      StoreWalletPrivateKeySuccessful _value, $Res Function(StoreWalletPrivateKeySuccessful) _then)
      : super(_value, (v) => _then(v as StoreWalletPrivateKeySuccessful));

  @override
  StoreWalletPrivateKeySuccessful get _value => super._value as StoreWalletPrivateKeySuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(StoreWalletPrivateKeySuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$StoreWalletPrivateKeySuccessful implements StoreWalletPrivateKeySuccessful {
  const _$StoreWalletPrivateKeySuccessful([this.pendingId = _kStoreWalletPrivateKeyPendingId]);

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreWalletPrivateKey.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreWalletPrivateKeySuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreWalletPrivateKeySuccessfulCopyWith<StoreWalletPrivateKeySuccessful> get copyWith =>
      _$StoreWalletPrivateKeySuccessfulCopyWithImpl<StoreWalletPrivateKeySuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreWalletPrivateKeyStart value) start,
    required TResult Function(StoreWalletPrivateKeySuccessful value) successful,
    required TResult Function(StoreWalletPrivateKeyError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreWalletPrivateKeyStart value)? start,
    TResult Function(StoreWalletPrivateKeySuccessful value)? successful,
    TResult Function(StoreWalletPrivateKeyError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreWalletPrivateKeyStart value)? start,
    TResult Function(StoreWalletPrivateKeySuccessful value)? successful,
    TResult Function(StoreWalletPrivateKeyError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class StoreWalletPrivateKeySuccessful implements StoreWalletPrivateKey, ActionDone {
  const factory StoreWalletPrivateKeySuccessful([String pendingId]) = _$StoreWalletPrivateKeySuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreWalletPrivateKeySuccessfulCopyWith<StoreWalletPrivateKeySuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreWalletPrivateKeyErrorCopyWith<$Res> implements $StoreWalletPrivateKeyCopyWith<$Res> {
  factory $StoreWalletPrivateKeyErrorCopyWith(
          StoreWalletPrivateKeyError value, $Res Function(StoreWalletPrivateKeyError) then) =
      _$StoreWalletPrivateKeyErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$StoreWalletPrivateKeyErrorCopyWithImpl<$Res> extends _$StoreWalletPrivateKeyCopyWithImpl<$Res>
    implements $StoreWalletPrivateKeyErrorCopyWith<$Res> {
  _$StoreWalletPrivateKeyErrorCopyWithImpl(
      StoreWalletPrivateKeyError _value, $Res Function(StoreWalletPrivateKeyError) _then)
      : super(_value, (v) => _then(v as StoreWalletPrivateKeyError));

  @override
  StoreWalletPrivateKeyError get _value => super._value as StoreWalletPrivateKeyError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(StoreWalletPrivateKeyError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$StoreWalletPrivateKeyError implements StoreWalletPrivateKeyError {
  const _$StoreWalletPrivateKeyError(this.error, this.stackTrace, [this.pendingId = _kStoreWalletPrivateKeyPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreWalletPrivateKey.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreWalletPrivateKeyError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreWalletPrivateKeyErrorCopyWith<StoreWalletPrivateKeyError> get copyWith =>
      _$StoreWalletPrivateKeyErrorCopyWithImpl<StoreWalletPrivateKeyError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreWalletPrivateKeyStart value) start,
    required TResult Function(StoreWalletPrivateKeySuccessful value) successful,
    required TResult Function(StoreWalletPrivateKeyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreWalletPrivateKeyStart value)? start,
    TResult Function(StoreWalletPrivateKeySuccessful value)? successful,
    TResult Function(StoreWalletPrivateKeyError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreWalletPrivateKeyStart value)? start,
    TResult Function(StoreWalletPrivateKeySuccessful value)? successful,
    TResult Function(StoreWalletPrivateKeyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StoreWalletPrivateKeyError implements StoreWalletPrivateKey, ActionDone, ErrorAction {
  const factory StoreWalletPrivateKeyError(Object error, StackTrace stackTrace, [String pendingId]) =
      _$StoreWalletPrivateKeyError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreWalletPrivateKeyErrorCopyWith<StoreWalletPrivateKeyError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetWalletPrivateKeyTearOff {
  const _$GetWalletPrivateKeyTearOff();

  GetWalletPrivateKeyStart start({required String masterKey, String pendingId = _kGetWalletPrivateKeyPendingId}) {
    return GetWalletPrivateKeyStart(
      masterKey: masterKey,
      pendingId: pendingId,
    );
  }

  GetWalletPrivateKeySuccessful successful(
      {required String? walletPrivateKey, String pendingId = _kGetWalletPrivateKeyPendingId}) {
    return GetWalletPrivateKeySuccessful(
      walletPrivateKey: walletPrivateKey,
      pendingId: pendingId,
    );
  }

  GetWalletPrivateKeyError error(Object error, StackTrace stackTrace,
      [String pendingId = _kGetWalletPrivateKeyPendingId]) {
    return GetWalletPrivateKeyError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $GetWalletPrivateKey = _$GetWalletPrivateKeyTearOff();

/// @nodoc
mixin _$GetWalletPrivateKey {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String? walletPrivateKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String? walletPrivateKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String? walletPrivateKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWalletPrivateKeyStart value) start,
    required TResult Function(GetWalletPrivateKeySuccessful value) successful,
    required TResult Function(GetWalletPrivateKeyError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetWalletPrivateKeyStart value)? start,
    TResult Function(GetWalletPrivateKeySuccessful value)? successful,
    TResult Function(GetWalletPrivateKeyError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWalletPrivateKeyStart value)? start,
    TResult Function(GetWalletPrivateKeySuccessful value)? successful,
    TResult Function(GetWalletPrivateKeyError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetWalletPrivateKeyCopyWith<GetWalletPrivateKey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWalletPrivateKeyCopyWith<$Res> {
  factory $GetWalletPrivateKeyCopyWith(GetWalletPrivateKey value, $Res Function(GetWalletPrivateKey) then) =
      _$GetWalletPrivateKeyCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$GetWalletPrivateKeyCopyWithImpl<$Res> implements $GetWalletPrivateKeyCopyWith<$Res> {
  _$GetWalletPrivateKeyCopyWithImpl(this._value, this._then);

  final GetWalletPrivateKey _value;
  // ignore: unused_field
  final $Res Function(GetWalletPrivateKey) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetWalletPrivateKeyStartCopyWith<$Res> implements $GetWalletPrivateKeyCopyWith<$Res> {
  factory $GetWalletPrivateKeyStartCopyWith(
          GetWalletPrivateKeyStart value, $Res Function(GetWalletPrivateKeyStart) then) =
      _$GetWalletPrivateKeyStartCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String pendingId});
}

/// @nodoc
class _$GetWalletPrivateKeyStartCopyWithImpl<$Res> extends _$GetWalletPrivateKeyCopyWithImpl<$Res>
    implements $GetWalletPrivateKeyStartCopyWith<$Res> {
  _$GetWalletPrivateKeyStartCopyWithImpl(GetWalletPrivateKeyStart _value, $Res Function(GetWalletPrivateKeyStart) _then)
      : super(_value, (v) => _then(v as GetWalletPrivateKeyStart));

  @override
  GetWalletPrivateKeyStart get _value => super._value as GetWalletPrivateKeyStart;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetWalletPrivateKeyStart(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$GetWalletPrivateKeyStart implements GetWalletPrivateKeyStart {
  const _$GetWalletPrivateKeyStart({required this.masterKey, this.pendingId = _kGetWalletPrivateKeyPendingId});

  @override
  final String masterKey;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetWalletPrivateKey.start(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetWalletPrivateKeyStart &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetWalletPrivateKeyStartCopyWith<GetWalletPrivateKeyStart> get copyWith =>
      _$GetWalletPrivateKeyStartCopyWithImpl<GetWalletPrivateKeyStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String? walletPrivateKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String? walletPrivateKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String? walletPrivateKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(masterKey, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWalletPrivateKeyStart value) start,
    required TResult Function(GetWalletPrivateKeySuccessful value) successful,
    required TResult Function(GetWalletPrivateKeyError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetWalletPrivateKeyStart value)? start,
    TResult Function(GetWalletPrivateKeySuccessful value)? successful,
    TResult Function(GetWalletPrivateKeyError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWalletPrivateKeyStart value)? start,
    TResult Function(GetWalletPrivateKeySuccessful value)? successful,
    TResult Function(GetWalletPrivateKeyError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetWalletPrivateKeyStart implements GetWalletPrivateKey, ActionStart {
  const factory GetWalletPrivateKeyStart({required String masterKey, String pendingId}) = _$GetWalletPrivateKeyStart;

  String get masterKey;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetWalletPrivateKeyStartCopyWith<GetWalletPrivateKeyStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWalletPrivateKeySuccessfulCopyWith<$Res> implements $GetWalletPrivateKeyCopyWith<$Res> {
  factory $GetWalletPrivateKeySuccessfulCopyWith(
          GetWalletPrivateKeySuccessful value, $Res Function(GetWalletPrivateKeySuccessful) then) =
      _$GetWalletPrivateKeySuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String? walletPrivateKey, String pendingId});
}

/// @nodoc
class _$GetWalletPrivateKeySuccessfulCopyWithImpl<$Res> extends _$GetWalletPrivateKeyCopyWithImpl<$Res>
    implements $GetWalletPrivateKeySuccessfulCopyWith<$Res> {
  _$GetWalletPrivateKeySuccessfulCopyWithImpl(
      GetWalletPrivateKeySuccessful _value, $Res Function(GetWalletPrivateKeySuccessful) _then)
      : super(_value, (v) => _then(v as GetWalletPrivateKeySuccessful));

  @override
  GetWalletPrivateKeySuccessful get _value => super._value as GetWalletPrivateKeySuccessful;

  @override
  $Res call({
    Object? walletPrivateKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetWalletPrivateKeySuccessful(
      walletPrivateKey: walletPrivateKey == freezed
          ? _value.walletPrivateKey
          : walletPrivateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$GetWalletPrivateKeySuccessful implements GetWalletPrivateKeySuccessful {
  const _$GetWalletPrivateKeySuccessful(
      {required this.walletPrivateKey, this.pendingId = _kGetWalletPrivateKeyPendingId});

  @override
  final String? walletPrivateKey;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetWalletPrivateKey.successful(walletPrivateKey: $walletPrivateKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetWalletPrivateKeySuccessful &&
            const DeepCollectionEquality().equals(other.walletPrivateKey, walletPrivateKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(walletPrivateKey),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetWalletPrivateKeySuccessfulCopyWith<GetWalletPrivateKeySuccessful> get copyWith =>
      _$GetWalletPrivateKeySuccessfulCopyWithImpl<GetWalletPrivateKeySuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String? walletPrivateKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(walletPrivateKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String? walletPrivateKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(walletPrivateKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String? walletPrivateKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(walletPrivateKey, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWalletPrivateKeyStart value) start,
    required TResult Function(GetWalletPrivateKeySuccessful value) successful,
    required TResult Function(GetWalletPrivateKeyError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetWalletPrivateKeyStart value)? start,
    TResult Function(GetWalletPrivateKeySuccessful value)? successful,
    TResult Function(GetWalletPrivateKeyError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWalletPrivateKeyStart value)? start,
    TResult Function(GetWalletPrivateKeySuccessful value)? successful,
    TResult Function(GetWalletPrivateKeyError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetWalletPrivateKeySuccessful implements GetWalletPrivateKey, ActionDone {
  const factory GetWalletPrivateKeySuccessful({required String? walletPrivateKey, String pendingId}) =
      _$GetWalletPrivateKeySuccessful;

  String? get walletPrivateKey;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetWalletPrivateKeySuccessfulCopyWith<GetWalletPrivateKeySuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWalletPrivateKeyErrorCopyWith<$Res> implements $GetWalletPrivateKeyCopyWith<$Res> {
  factory $GetWalletPrivateKeyErrorCopyWith(
          GetWalletPrivateKeyError value, $Res Function(GetWalletPrivateKeyError) then) =
      _$GetWalletPrivateKeyErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$GetWalletPrivateKeyErrorCopyWithImpl<$Res> extends _$GetWalletPrivateKeyCopyWithImpl<$Res>
    implements $GetWalletPrivateKeyErrorCopyWith<$Res> {
  _$GetWalletPrivateKeyErrorCopyWithImpl(GetWalletPrivateKeyError _value, $Res Function(GetWalletPrivateKeyError) _then)
      : super(_value, (v) => _then(v as GetWalletPrivateKeyError));

  @override
  GetWalletPrivateKeyError get _value => super._value as GetWalletPrivateKeyError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetWalletPrivateKeyError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$GetWalletPrivateKeyError implements GetWalletPrivateKeyError {
  const _$GetWalletPrivateKeyError(this.error, this.stackTrace, [this.pendingId = _kGetWalletPrivateKeyPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetWalletPrivateKey.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetWalletPrivateKeyError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetWalletPrivateKeyErrorCopyWith<GetWalletPrivateKeyError> get copyWith =>
      _$GetWalletPrivateKeyErrorCopyWithImpl<GetWalletPrivateKeyError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String? walletPrivateKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String? walletPrivateKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String? walletPrivateKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWalletPrivateKeyStart value) start,
    required TResult Function(GetWalletPrivateKeySuccessful value) successful,
    required TResult Function(GetWalletPrivateKeyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetWalletPrivateKeyStart value)? start,
    TResult Function(GetWalletPrivateKeySuccessful value)? successful,
    TResult Function(GetWalletPrivateKeyError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWalletPrivateKeyStart value)? start,
    TResult Function(GetWalletPrivateKeySuccessful value)? successful,
    TResult Function(GetWalletPrivateKeyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetWalletPrivateKeyError implements GetWalletPrivateKey, ActionDone, ErrorAction {
  const factory GetWalletPrivateKeyError(Object error, StackTrace stackTrace, [String pendingId]) =
      _$GetWalletPrivateKeyError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetWalletPrivateKeyErrorCopyWith<GetWalletPrivateKeyError> get copyWith => throw _privateConstructorUsedError;
}

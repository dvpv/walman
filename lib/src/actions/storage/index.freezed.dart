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
      {required Bundle bundle, ActionResult? onResult, String pendingId = _kBlockchainAddBundlePendingId}) {
    return BlockchainAddBundleStart(
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
    required TResult Function(Bundle bundle, ActionResult? onResult, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle bundle, ActionResult? onResult, String pendingId)? start,
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
  $Res call({Bundle bundle, ActionResult? onResult, String pendingId});

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
    Object? bundle = freezed,
    Object? onResult = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(BlockchainAddBundleStart(
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
      {required this.bundle, this.onResult, this.pendingId = _kBlockchainAddBundlePendingId});

  @override
  final Bundle bundle;
  @override
  final ActionResult? onResult;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'BlockchainAddBundle.start(bundle: $bundle, onResult: $onResult, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockchainAddBundleStart &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            (identical(other.onResult, onResult) || other.onResult == onResult) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(bundle), onResult,
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $BlockchainAddBundleStartCopyWith<BlockchainAddBundleStart> get copyWith =>
      _$BlockchainAddBundleStartCopyWithImpl<BlockchainAddBundleStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bundle bundle, ActionResult? onResult, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(bundle, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(bundle, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(bundle, onResult, pendingId);
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
  const factory BlockchainAddBundleStart({required Bundle bundle, ActionResult? onResult, String pendingId}) =
      _$BlockchainAddBundleStart;

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
    required TResult Function(Bundle bundle, ActionResult? onResult, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle bundle, ActionResult? onResult, String pendingId)? start,
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
    required TResult Function(Bundle bundle, ActionResult? onResult, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle bundle, ActionResult? onResult, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle bundle, ActionResult? onResult, String pendingId)? start,
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
      {ActionResult? onResult, String pendingId = _kBlockchainRestoreLatestBundlePendingId}) {
    return BlockchainRestoreLatestBundleStart(
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
    required TResult Function(ActionResult? onResult, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult? onResult, String pendingId)? start,
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
  $Res call({ActionResult? onResult, String pendingId});
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
    Object? onResult = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(BlockchainRestoreLatestBundleStart(
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
      {this.onResult, this.pendingId = _kBlockchainRestoreLatestBundlePendingId});

  @override
  final ActionResult? onResult;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'BlockchainRestoreLatestBundle.start(onResult: $onResult, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockchainRestoreLatestBundleStart &&
            (identical(other.onResult, onResult) || other.onResult == onResult) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onResult, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $BlockchainRestoreLatestBundleStartCopyWith<BlockchainRestoreLatestBundleStart> get copyWith =>
      _$BlockchainRestoreLatestBundleStartCopyWithImpl<BlockchainRestoreLatestBundleStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult? onResult, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(onResult, pendingId);
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
  const factory BlockchainRestoreLatestBundleStart({ActionResult? onResult, String pendingId}) =
      _$BlockchainRestoreLatestBundleStart;

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
    required TResult Function(ActionResult? onResult, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult? onResult, String pendingId)? start,
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
    required TResult Function(ActionResult? onResult, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ActionResult? onResult, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult? onResult, String pendingId)? start,
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
class _$SecureStorageStoreBundleTearOff {
  const _$SecureStorageStoreBundleTearOff();

  SecureStorageStoreBundleStart start({Bundle? bundle, String pendingId = _kSecureStorageStoreBundlePendingId}) {
    return SecureStorageStoreBundleStart(
      bundle: bundle,
      pendingId: pendingId,
    );
  }

  SecureStorageStoreBundleSuccessful successful([String pendingId = _kSecureStorageStoreBundlePendingId]) {
    return SecureStorageStoreBundleSuccessful(
      pendingId,
    );
  }

  SecureStorageStoreBundleError error(Object error, StackTrace stackTrace,
      [String pendingId = _kSecureStorageStoreBundlePendingId]) {
    return SecureStorageStoreBundleError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $SecureStorageStoreBundle = _$SecureStorageStoreBundleTearOff();

/// @nodoc
mixin _$SecureStorageStoreBundle {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bundle? bundle, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle? bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle? bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SecureStorageStoreBundleStart value) start,
    required TResult Function(SecureStorageStoreBundleSuccessful value) successful,
    required TResult Function(SecureStorageStoreBundleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureStorageStoreBundleStart value)? start,
    TResult Function(SecureStorageStoreBundleSuccessful value)? successful,
    TResult Function(SecureStorageStoreBundleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureStorageStoreBundleStart value)? start,
    TResult Function(SecureStorageStoreBundleSuccessful value)? successful,
    TResult Function(SecureStorageStoreBundleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecureStorageStoreBundleCopyWith<SecureStorageStoreBundle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureStorageStoreBundleCopyWith<$Res> {
  factory $SecureStorageStoreBundleCopyWith(
          SecureStorageStoreBundle value, $Res Function(SecureStorageStoreBundle) then) =
      _$SecureStorageStoreBundleCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$SecureStorageStoreBundleCopyWithImpl<$Res> implements $SecureStorageStoreBundleCopyWith<$Res> {
  _$SecureStorageStoreBundleCopyWithImpl(this._value, this._then);

  final SecureStorageStoreBundle _value;
  // ignore: unused_field
  final $Res Function(SecureStorageStoreBundle) _then;

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
abstract class $SecureStorageStoreBundleStartCopyWith<$Res> implements $SecureStorageStoreBundleCopyWith<$Res> {
  factory $SecureStorageStoreBundleStartCopyWith(
          SecureStorageStoreBundleStart value, $Res Function(SecureStorageStoreBundleStart) then) =
      _$SecureStorageStoreBundleStartCopyWithImpl<$Res>;
  @override
  $Res call({Bundle? bundle, String pendingId});

  $BundleCopyWith<$Res>? get bundle;
}

/// @nodoc
class _$SecureStorageStoreBundleStartCopyWithImpl<$Res> extends _$SecureStorageStoreBundleCopyWithImpl<$Res>
    implements $SecureStorageStoreBundleStartCopyWith<$Res> {
  _$SecureStorageStoreBundleStartCopyWithImpl(
      SecureStorageStoreBundleStart _value, $Res Function(SecureStorageStoreBundleStart) _then)
      : super(_value, (v) => _then(v as SecureStorageStoreBundleStart));

  @override
  SecureStorageStoreBundleStart get _value => super._value as SecureStorageStoreBundleStart;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SecureStorageStoreBundleStart(
      bundle: bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle?,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $BundleCopyWith<$Res>? get bundle {
    if (_value.bundle == null) {
      return null;
    }

    return $BundleCopyWith<$Res>(_value.bundle!, (value) {
      return _then(_value.copyWith(bundle: value));
    });
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$SecureStorageStoreBundleStart implements SecureStorageStoreBundleStart {
  const _$SecureStorageStoreBundleStart({this.bundle, this.pendingId = _kSecureStorageStoreBundlePendingId});

  @override /*
    * Needed for the cases where there is concurrency between this and state upgrade.
    * */
  final Bundle? bundle;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SecureStorageStoreBundle.start(bundle: $bundle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecureStorageStoreBundleStart &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bundle), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SecureStorageStoreBundleStartCopyWith<SecureStorageStoreBundleStart> get copyWith =>
      _$SecureStorageStoreBundleStartCopyWithImpl<SecureStorageStoreBundleStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bundle? bundle, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle? bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle? bundle, String pendingId)? start,
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
    required TResult Function(SecureStorageStoreBundleStart value) start,
    required TResult Function(SecureStorageStoreBundleSuccessful value) successful,
    required TResult Function(SecureStorageStoreBundleError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureStorageStoreBundleStart value)? start,
    TResult Function(SecureStorageStoreBundleSuccessful value)? successful,
    TResult Function(SecureStorageStoreBundleError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureStorageStoreBundleStart value)? start,
    TResult Function(SecureStorageStoreBundleSuccessful value)? successful,
    TResult Function(SecureStorageStoreBundleError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class SecureStorageStoreBundleStart implements SecureStorageStoreBundle, ActionStart {
  const factory SecureStorageStoreBundleStart({Bundle? bundle, String pendingId}) = _$SecureStorageStoreBundleStart;

/*
    * Needed for the cases where there is concurrency between this and state upgrade.
    * */
  Bundle? get bundle;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SecureStorageStoreBundleStartCopyWith<SecureStorageStoreBundleStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureStorageStoreBundleSuccessfulCopyWith<$Res> implements $SecureStorageStoreBundleCopyWith<$Res> {
  factory $SecureStorageStoreBundleSuccessfulCopyWith(
          SecureStorageStoreBundleSuccessful value, $Res Function(SecureStorageStoreBundleSuccessful) then) =
      _$SecureStorageStoreBundleSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$SecureStorageStoreBundleSuccessfulCopyWithImpl<$Res> extends _$SecureStorageStoreBundleCopyWithImpl<$Res>
    implements $SecureStorageStoreBundleSuccessfulCopyWith<$Res> {
  _$SecureStorageStoreBundleSuccessfulCopyWithImpl(
      SecureStorageStoreBundleSuccessful _value, $Res Function(SecureStorageStoreBundleSuccessful) _then)
      : super(_value, (v) => _then(v as SecureStorageStoreBundleSuccessful));

  @override
  SecureStorageStoreBundleSuccessful get _value => super._value as SecureStorageStoreBundleSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(SecureStorageStoreBundleSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$SecureStorageStoreBundleSuccessful implements SecureStorageStoreBundleSuccessful {
  const _$SecureStorageStoreBundleSuccessful([this.pendingId = _kSecureStorageStoreBundlePendingId]);

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SecureStorageStoreBundle.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecureStorageStoreBundleSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SecureStorageStoreBundleSuccessfulCopyWith<SecureStorageStoreBundleSuccessful> get copyWith =>
      _$SecureStorageStoreBundleSuccessfulCopyWithImpl<SecureStorageStoreBundleSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bundle? bundle, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle? bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle? bundle, String pendingId)? start,
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
    required TResult Function(SecureStorageStoreBundleStart value) start,
    required TResult Function(SecureStorageStoreBundleSuccessful value) successful,
    required TResult Function(SecureStorageStoreBundleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureStorageStoreBundleStart value)? start,
    TResult Function(SecureStorageStoreBundleSuccessful value)? successful,
    TResult Function(SecureStorageStoreBundleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureStorageStoreBundleStart value)? start,
    TResult Function(SecureStorageStoreBundleSuccessful value)? successful,
    TResult Function(SecureStorageStoreBundleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SecureStorageStoreBundleSuccessful implements SecureStorageStoreBundle, ActionDone {
  const factory SecureStorageStoreBundleSuccessful([String pendingId]) = _$SecureStorageStoreBundleSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SecureStorageStoreBundleSuccessfulCopyWith<SecureStorageStoreBundleSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureStorageStoreBundleErrorCopyWith<$Res> implements $SecureStorageStoreBundleCopyWith<$Res> {
  factory $SecureStorageStoreBundleErrorCopyWith(
          SecureStorageStoreBundleError value, $Res Function(SecureStorageStoreBundleError) then) =
      _$SecureStorageStoreBundleErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$SecureStorageStoreBundleErrorCopyWithImpl<$Res> extends _$SecureStorageStoreBundleCopyWithImpl<$Res>
    implements $SecureStorageStoreBundleErrorCopyWith<$Res> {
  _$SecureStorageStoreBundleErrorCopyWithImpl(
      SecureStorageStoreBundleError _value, $Res Function(SecureStorageStoreBundleError) _then)
      : super(_value, (v) => _then(v as SecureStorageStoreBundleError));

  @override
  SecureStorageStoreBundleError get _value => super._value as SecureStorageStoreBundleError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SecureStorageStoreBundleError(
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
class _$SecureStorageStoreBundleError implements SecureStorageStoreBundleError {
  const _$SecureStorageStoreBundleError(this.error, this.stackTrace,
      [this.pendingId = _kSecureStorageStoreBundlePendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SecureStorageStoreBundle.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecureStorageStoreBundleError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SecureStorageStoreBundleErrorCopyWith<SecureStorageStoreBundleError> get copyWith =>
      _$SecureStorageStoreBundleErrorCopyWithImpl<SecureStorageStoreBundleError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bundle? bundle, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Bundle? bundle, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bundle? bundle, String pendingId)? start,
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
    required TResult Function(SecureStorageStoreBundleStart value) start,
    required TResult Function(SecureStorageStoreBundleSuccessful value) successful,
    required TResult Function(SecureStorageStoreBundleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureStorageStoreBundleStart value)? start,
    TResult Function(SecureStorageStoreBundleSuccessful value)? successful,
    TResult Function(SecureStorageStoreBundleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureStorageStoreBundleStart value)? start,
    TResult Function(SecureStorageStoreBundleSuccessful value)? successful,
    TResult Function(SecureStorageStoreBundleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SecureStorageStoreBundleError implements SecureStorageStoreBundle, ActionDone, ErrorAction {
  const factory SecureStorageStoreBundleError(Object error, StackTrace stackTrace, [String pendingId]) =
      _$SecureStorageStoreBundleError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SecureStorageStoreBundleErrorCopyWith<SecureStorageStoreBundleError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SecureStorageGetBundleTearOff {
  const _$SecureStorageGetBundleTearOff();

  SecureStorageGetBundleStart start({String? masterKey, String pendingId = _kSecureStorageGetBundlePendingId}) {
    return SecureStorageGetBundleStart(
      masterKey: masterKey,
      pendingId: pendingId,
    );
  }

  SecureStorageGetBundleSuccessful successful(
      {required Bundle bundle, String pendingId = _kSecureStorageGetBundlePendingId}) {
    return SecureStorageGetBundleSuccessful(
      bundle: bundle,
      pendingId: pendingId,
    );
  }

  SecureStorageGetBundleError error(Object error, StackTrace stackTrace,
      [String pendingId = _kSecureStorageGetBundlePendingId]) {
    return SecureStorageGetBundleError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $SecureStorageGetBundle = _$SecureStorageGetBundleTearOff();

/// @nodoc
mixin _$SecureStorageGetBundle {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? masterKey, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SecureStorageGetBundleStart value) start,
    required TResult Function(SecureStorageGetBundleSuccessful value) successful,
    required TResult Function(SecureStorageGetBundleError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureStorageGetBundleStart value)? start,
    TResult Function(SecureStorageGetBundleSuccessful value)? successful,
    TResult Function(SecureStorageGetBundleError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureStorageGetBundleStart value)? start,
    TResult Function(SecureStorageGetBundleSuccessful value)? successful,
    TResult Function(SecureStorageGetBundleError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecureStorageGetBundleCopyWith<SecureStorageGetBundle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureStorageGetBundleCopyWith<$Res> {
  factory $SecureStorageGetBundleCopyWith(SecureStorageGetBundle value, $Res Function(SecureStorageGetBundle) then) =
      _$SecureStorageGetBundleCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$SecureStorageGetBundleCopyWithImpl<$Res> implements $SecureStorageGetBundleCopyWith<$Res> {
  _$SecureStorageGetBundleCopyWithImpl(this._value, this._then);

  final SecureStorageGetBundle _value;
  // ignore: unused_field
  final $Res Function(SecureStorageGetBundle) _then;

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
abstract class $SecureStorageGetBundleStartCopyWith<$Res> implements $SecureStorageGetBundleCopyWith<$Res> {
  factory $SecureStorageGetBundleStartCopyWith(
          SecureStorageGetBundleStart value, $Res Function(SecureStorageGetBundleStart) then) =
      _$SecureStorageGetBundleStartCopyWithImpl<$Res>;
  @override
  $Res call({String? masterKey, String pendingId});
}

/// @nodoc
class _$SecureStorageGetBundleStartCopyWithImpl<$Res> extends _$SecureStorageGetBundleCopyWithImpl<$Res>
    implements $SecureStorageGetBundleStartCopyWith<$Res> {
  _$SecureStorageGetBundleStartCopyWithImpl(
      SecureStorageGetBundleStart _value, $Res Function(SecureStorageGetBundleStart) _then)
      : super(_value, (v) => _then(v as SecureStorageGetBundleStart));

  @override
  SecureStorageGetBundleStart get _value => super._value as SecureStorageGetBundleStart;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SecureStorageGetBundleStart(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
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
class _$SecureStorageGetBundleStart implements SecureStorageGetBundleStart {
  const _$SecureStorageGetBundleStart({this.masterKey, this.pendingId = _kSecureStorageGetBundlePendingId});

  @override /*
    * Needed for the cases where there is concurrency between this and state upgrade.
    * */
  final String? masterKey;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SecureStorageGetBundle.start(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecureStorageGetBundleStart &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SecureStorageGetBundleStartCopyWith<SecureStorageGetBundleStart> get copyWith =>
      _$SecureStorageGetBundleStartCopyWithImpl<SecureStorageGetBundleStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? masterKey, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? masterKey, String pendingId)? start,
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
    required TResult Function(SecureStorageGetBundleStart value) start,
    required TResult Function(SecureStorageGetBundleSuccessful value) successful,
    required TResult Function(SecureStorageGetBundleError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureStorageGetBundleStart value)? start,
    TResult Function(SecureStorageGetBundleSuccessful value)? successful,
    TResult Function(SecureStorageGetBundleError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureStorageGetBundleStart value)? start,
    TResult Function(SecureStorageGetBundleSuccessful value)? successful,
    TResult Function(SecureStorageGetBundleError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class SecureStorageGetBundleStart implements SecureStorageGetBundle, ActionStart {
  const factory SecureStorageGetBundleStart({String? masterKey, String pendingId}) = _$SecureStorageGetBundleStart;

/*
    * Needed for the cases where there is concurrency between this and state upgrade.
    * */
  String? get masterKey;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SecureStorageGetBundleStartCopyWith<SecureStorageGetBundleStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureStorageGetBundleSuccessfulCopyWith<$Res> implements $SecureStorageGetBundleCopyWith<$Res> {
  factory $SecureStorageGetBundleSuccessfulCopyWith(
          SecureStorageGetBundleSuccessful value, $Res Function(SecureStorageGetBundleSuccessful) then) =
      _$SecureStorageGetBundleSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({Bundle bundle, String pendingId});

  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class _$SecureStorageGetBundleSuccessfulCopyWithImpl<$Res> extends _$SecureStorageGetBundleCopyWithImpl<$Res>
    implements $SecureStorageGetBundleSuccessfulCopyWith<$Res> {
  _$SecureStorageGetBundleSuccessfulCopyWithImpl(
      SecureStorageGetBundleSuccessful _value, $Res Function(SecureStorageGetBundleSuccessful) _then)
      : super(_value, (v) => _then(v as SecureStorageGetBundleSuccessful));

  @override
  SecureStorageGetBundleSuccessful get _value => super._value as SecureStorageGetBundleSuccessful;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SecureStorageGetBundleSuccessful(
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
class _$SecureStorageGetBundleSuccessful implements SecureStorageGetBundleSuccessful {
  const _$SecureStorageGetBundleSuccessful({required this.bundle, this.pendingId = _kSecureStorageGetBundlePendingId});

  @override
  final Bundle bundle;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SecureStorageGetBundle.successful(bundle: $bundle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecureStorageGetBundleSuccessful &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bundle), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SecureStorageGetBundleSuccessfulCopyWith<SecureStorageGetBundleSuccessful> get copyWith =>
      _$SecureStorageGetBundleSuccessfulCopyWithImpl<SecureStorageGetBundleSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? masterKey, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? masterKey, String pendingId)? start,
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
    required TResult Function(SecureStorageGetBundleStart value) start,
    required TResult Function(SecureStorageGetBundleSuccessful value) successful,
    required TResult Function(SecureStorageGetBundleError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureStorageGetBundleStart value)? start,
    TResult Function(SecureStorageGetBundleSuccessful value)? successful,
    TResult Function(SecureStorageGetBundleError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureStorageGetBundleStart value)? start,
    TResult Function(SecureStorageGetBundleSuccessful value)? successful,
    TResult Function(SecureStorageGetBundleError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SecureStorageGetBundleSuccessful implements SecureStorageGetBundle, ActionDone {
  const factory SecureStorageGetBundleSuccessful({required Bundle bundle, String pendingId}) =
      _$SecureStorageGetBundleSuccessful;

  Bundle get bundle;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SecureStorageGetBundleSuccessfulCopyWith<SecureStorageGetBundleSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureStorageGetBundleErrorCopyWith<$Res> implements $SecureStorageGetBundleCopyWith<$Res> {
  factory $SecureStorageGetBundleErrorCopyWith(
          SecureStorageGetBundleError value, $Res Function(SecureStorageGetBundleError) then) =
      _$SecureStorageGetBundleErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$SecureStorageGetBundleErrorCopyWithImpl<$Res> extends _$SecureStorageGetBundleCopyWithImpl<$Res>
    implements $SecureStorageGetBundleErrorCopyWith<$Res> {
  _$SecureStorageGetBundleErrorCopyWithImpl(
      SecureStorageGetBundleError _value, $Res Function(SecureStorageGetBundleError) _then)
      : super(_value, (v) => _then(v as SecureStorageGetBundleError));

  @override
  SecureStorageGetBundleError get _value => super._value as SecureStorageGetBundleError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SecureStorageGetBundleError(
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
class _$SecureStorageGetBundleError implements SecureStorageGetBundleError {
  const _$SecureStorageGetBundleError(this.error, this.stackTrace,
      [this.pendingId = _kSecureStorageGetBundlePendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SecureStorageGetBundle.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SecureStorageGetBundleError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SecureStorageGetBundleErrorCopyWith<SecureStorageGetBundleError> get copyWith =>
      _$SecureStorageGetBundleErrorCopyWithImpl<SecureStorageGetBundleError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? masterKey, String pendingId) start,
    required TResult Function(Bundle bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? masterKey, String pendingId)? start,
    TResult Function(Bundle bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? masterKey, String pendingId)? start,
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
    required TResult Function(SecureStorageGetBundleStart value) start,
    required TResult Function(SecureStorageGetBundleSuccessful value) successful,
    required TResult Function(SecureStorageGetBundleError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SecureStorageGetBundleStart value)? start,
    TResult Function(SecureStorageGetBundleSuccessful value)? successful,
    TResult Function(SecureStorageGetBundleError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SecureStorageGetBundleStart value)? start,
    TResult Function(SecureStorageGetBundleSuccessful value)? successful,
    TResult Function(SecureStorageGetBundleError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SecureStorageGetBundleError implements SecureStorageGetBundle, ActionDone, ErrorAction {
  const factory SecureStorageGetBundleError(Object error, StackTrace stackTrace, [String pendingId]) =
      _$SecureStorageGetBundleError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SecureStorageGetBundleErrorCopyWith<SecureStorageGetBundleError> get copyWith => throw _privateConstructorUsedError;
}

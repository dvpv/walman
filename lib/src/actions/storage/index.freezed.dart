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
class _$GetDataTearOff {
  const _$GetDataTearOff();

  GetDataStart start({required String masterKey, String pendingId = _kGetDataPendingId}) {
    return GetDataStart(
      masterKey: masterKey,
      pendingId: pendingId,
    );
  }

  GetDataSuccessful successful(Bundle? bundle, [String pendingId = _kGetDataPendingId]) {
    return GetDataSuccessful(
      bundle,
      pendingId,
    );
  }

  GetDataError error(Object error, StackTrace stackTrace, [String pendingId = _kGetDataPendingId]) {
    return GetDataError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $GetData = _$GetDataTearOff();

/// @nodoc
mixin _$GetData {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(Bundle? bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle? bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle? bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataStart value) start,
    required TResult Function(GetDataSuccessful value) successful,
    required TResult Function(GetDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDataStart value)? start,
    TResult Function(GetDataSuccessful value)? successful,
    TResult Function(GetDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataStart value)? start,
    TResult Function(GetDataSuccessful value)? successful,
    TResult Function(GetDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetDataCopyWith<GetData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataCopyWith<$Res> {
  factory $GetDataCopyWith(GetData value, $Res Function(GetData) then) = _$GetDataCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$GetDataCopyWithImpl<$Res> implements $GetDataCopyWith<$Res> {
  _$GetDataCopyWithImpl(this._value, this._then);

  final GetData _value;
  // ignore: unused_field
  final $Res Function(GetData) _then;

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
abstract class $GetDataStartCopyWith<$Res> implements $GetDataCopyWith<$Res> {
  factory $GetDataStartCopyWith(GetDataStart value, $Res Function(GetDataStart) then) =
      _$GetDataStartCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String pendingId});
}

/// @nodoc
class _$GetDataStartCopyWithImpl<$Res> extends _$GetDataCopyWithImpl<$Res> implements $GetDataStartCopyWith<$Res> {
  _$GetDataStartCopyWithImpl(GetDataStart _value, $Res Function(GetDataStart) _then)
      : super(_value, (v) => _then(v as GetDataStart));

  @override
  GetDataStart get _value => super._value as GetDataStart;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetDataStart(
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
class _$GetDataStart implements GetDataStart {
  const _$GetDataStart({required this.masterKey, this.pendingId = _kGetDataPendingId});

  @override
  final String masterKey;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetData.start(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetDataStart &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetDataStartCopyWith<GetDataStart> get copyWith => _$GetDataStartCopyWithImpl<GetDataStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(Bundle? bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle? bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle? bundle, String pendingId)? successful,
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
    required TResult Function(GetDataStart value) start,
    required TResult Function(GetDataSuccessful value) successful,
    required TResult Function(GetDataError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDataStart value)? start,
    TResult Function(GetDataSuccessful value)? successful,
    TResult Function(GetDataError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataStart value)? start,
    TResult Function(GetDataSuccessful value)? successful,
    TResult Function(GetDataError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetDataStart implements GetData, ActionStart {
  const factory GetDataStart({required String masterKey, String pendingId}) = _$GetDataStart;

  String get masterKey;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetDataStartCopyWith<GetDataStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataSuccessfulCopyWith<$Res> implements $GetDataCopyWith<$Res> {
  factory $GetDataSuccessfulCopyWith(GetDataSuccessful value, $Res Function(GetDataSuccessful) then) =
      _$GetDataSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({Bundle? bundle, String pendingId});

  $BundleCopyWith<$Res>? get bundle;
}

/// @nodoc
class _$GetDataSuccessfulCopyWithImpl<$Res> extends _$GetDataCopyWithImpl<$Res>
    implements $GetDataSuccessfulCopyWith<$Res> {
  _$GetDataSuccessfulCopyWithImpl(GetDataSuccessful _value, $Res Function(GetDataSuccessful) _then)
      : super(_value, (v) => _then(v as GetDataSuccessful));

  @override
  GetDataSuccessful get _value => super._value as GetDataSuccessful;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetDataSuccessful(
      bundle == freezed
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle?,
      pendingId == freezed
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

@Implements<ActionDone>()
class _$GetDataSuccessful implements GetDataSuccessful {
  const _$GetDataSuccessful(this.bundle, [this.pendingId = _kGetDataPendingId]);

  @override
  final Bundle? bundle;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetData.successful(bundle: $bundle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetDataSuccessful &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bundle), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetDataSuccessfulCopyWith<GetDataSuccessful> get copyWith =>
      _$GetDataSuccessfulCopyWithImpl<GetDataSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(Bundle? bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle? bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(bundle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle? bundle, String pendingId)? successful,
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
    required TResult Function(GetDataStart value) start,
    required TResult Function(GetDataSuccessful value) successful,
    required TResult Function(GetDataError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDataStart value)? start,
    TResult Function(GetDataSuccessful value)? successful,
    TResult Function(GetDataError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataStart value)? start,
    TResult Function(GetDataSuccessful value)? successful,
    TResult Function(GetDataError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetDataSuccessful implements GetData, ActionDone {
  const factory GetDataSuccessful(Bundle? bundle, [String pendingId]) = _$GetDataSuccessful;

  Bundle? get bundle;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetDataSuccessfulCopyWith<GetDataSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataErrorCopyWith<$Res> implements $GetDataCopyWith<$Res> {
  factory $GetDataErrorCopyWith(GetDataError value, $Res Function(GetDataError) then) =
      _$GetDataErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$GetDataErrorCopyWithImpl<$Res> extends _$GetDataCopyWithImpl<$Res> implements $GetDataErrorCopyWith<$Res> {
  _$GetDataErrorCopyWithImpl(GetDataError _value, $Res Function(GetDataError) _then)
      : super(_value, (v) => _then(v as GetDataError));

  @override
  GetDataError get _value => super._value as GetDataError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetDataError(
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
class _$GetDataError implements GetDataError {
  const _$GetDataError(this.error, this.stackTrace, [this.pendingId = _kGetDataPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetData.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetDataError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetDataErrorCopyWith<GetDataError> get copyWith => _$GetDataErrorCopyWithImpl<GetDataError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(Bundle? bundle, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle? bundle, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(Bundle? bundle, String pendingId)? successful,
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
    required TResult Function(GetDataStart value) start,
    required TResult Function(GetDataSuccessful value) successful,
    required TResult Function(GetDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetDataStart value)? start,
    TResult Function(GetDataSuccessful value)? successful,
    TResult Function(GetDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataStart value)? start,
    TResult Function(GetDataSuccessful value)? successful,
    TResult Function(GetDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetDataError implements GetData, ActionDone, ErrorAction {
  const factory GetDataError(Object error, StackTrace stackTrace, [String pendingId]) = _$GetDataError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetDataErrorCopyWith<GetDataError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$StoreDataTearOff {
  const _$StoreDataTearOff();

  StoreDataStart start({Bundle? bundle, String pendingId = _kStoreDataPendingId}) {
    return StoreDataStart(
      bundle: bundle,
      pendingId: pendingId,
    );
  }

  StoreDataSuccessful successful([String pendingId = _kStoreDataPendingId]) {
    return StoreDataSuccessful(
      pendingId,
    );
  }

  StoreDataError error(Object error, StackTrace stackTrace, [String pendingId = _kStoreDataPendingId]) {
    return StoreDataError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $StoreData = _$StoreDataTearOff();

/// @nodoc
mixin _$StoreData {
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
    required TResult Function(StoreDataStart value) start,
    required TResult Function(StoreDataSuccessful value) successful,
    required TResult Function(StoreDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreDataStart value)? start,
    TResult Function(StoreDataSuccessful value)? successful,
    TResult Function(StoreDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreDataStart value)? start,
    TResult Function(StoreDataSuccessful value)? successful,
    TResult Function(StoreDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoreDataCopyWith<StoreData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDataCopyWith<$Res> {
  factory $StoreDataCopyWith(StoreData value, $Res Function(StoreData) then) = _$StoreDataCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$StoreDataCopyWithImpl<$Res> implements $StoreDataCopyWith<$Res> {
  _$StoreDataCopyWithImpl(this._value, this._then);

  final StoreData _value;
  // ignore: unused_field
  final $Res Function(StoreData) _then;

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
abstract class $StoreDataStartCopyWith<$Res> implements $StoreDataCopyWith<$Res> {
  factory $StoreDataStartCopyWith(StoreDataStart value, $Res Function(StoreDataStart) then) =
      _$StoreDataStartCopyWithImpl<$Res>;
  @override
  $Res call({Bundle? bundle, String pendingId});

  $BundleCopyWith<$Res>? get bundle;
}

/// @nodoc
class _$StoreDataStartCopyWithImpl<$Res> extends _$StoreDataCopyWithImpl<$Res>
    implements $StoreDataStartCopyWith<$Res> {
  _$StoreDataStartCopyWithImpl(StoreDataStart _value, $Res Function(StoreDataStart) _then)
      : super(_value, (v) => _then(v as StoreDataStart));

  @override
  StoreDataStart get _value => super._value as StoreDataStart;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(StoreDataStart(
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
class _$StoreDataStart implements StoreDataStart {
  const _$StoreDataStart({this.bundle, this.pendingId = _kStoreDataPendingId});

  @override
  final Bundle? bundle;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreData.start(bundle: $bundle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreDataStart &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bundle), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreDataStartCopyWith<StoreDataStart> get copyWith =>
      _$StoreDataStartCopyWithImpl<StoreDataStart>(this, _$identity);

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
    required TResult Function(StoreDataStart value) start,
    required TResult Function(StoreDataSuccessful value) successful,
    required TResult Function(StoreDataError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreDataStart value)? start,
    TResult Function(StoreDataSuccessful value)? successful,
    TResult Function(StoreDataError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreDataStart value)? start,
    TResult Function(StoreDataSuccessful value)? successful,
    TResult Function(StoreDataError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StoreDataStart implements StoreData, ActionStart {
  const factory StoreDataStart({Bundle? bundle, String pendingId}) = _$StoreDataStart;

  Bundle? get bundle;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreDataStartCopyWith<StoreDataStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDataSuccessfulCopyWith<$Res> implements $StoreDataCopyWith<$Res> {
  factory $StoreDataSuccessfulCopyWith(StoreDataSuccessful value, $Res Function(StoreDataSuccessful) then) =
      _$StoreDataSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$StoreDataSuccessfulCopyWithImpl<$Res> extends _$StoreDataCopyWithImpl<$Res>
    implements $StoreDataSuccessfulCopyWith<$Res> {
  _$StoreDataSuccessfulCopyWithImpl(StoreDataSuccessful _value, $Res Function(StoreDataSuccessful) _then)
      : super(_value, (v) => _then(v as StoreDataSuccessful));

  @override
  StoreDataSuccessful get _value => super._value as StoreDataSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(StoreDataSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$StoreDataSuccessful implements StoreDataSuccessful {
  const _$StoreDataSuccessful([this.pendingId = _kStoreDataPendingId]);

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreData.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreDataSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreDataSuccessfulCopyWith<StoreDataSuccessful> get copyWith =>
      _$StoreDataSuccessfulCopyWithImpl<StoreDataSuccessful>(this, _$identity);

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
    required TResult Function(StoreDataStart value) start,
    required TResult Function(StoreDataSuccessful value) successful,
    required TResult Function(StoreDataError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreDataStart value)? start,
    TResult Function(StoreDataSuccessful value)? successful,
    TResult Function(StoreDataError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreDataStart value)? start,
    TResult Function(StoreDataSuccessful value)? successful,
    TResult Function(StoreDataError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class StoreDataSuccessful implements StoreData, ActionDone {
  const factory StoreDataSuccessful([String pendingId]) = _$StoreDataSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreDataSuccessfulCopyWith<StoreDataSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreDataErrorCopyWith<$Res> implements $StoreDataCopyWith<$Res> {
  factory $StoreDataErrorCopyWith(StoreDataError value, $Res Function(StoreDataError) then) =
      _$StoreDataErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$StoreDataErrorCopyWithImpl<$Res> extends _$StoreDataCopyWithImpl<$Res>
    implements $StoreDataErrorCopyWith<$Res> {
  _$StoreDataErrorCopyWithImpl(StoreDataError _value, $Res Function(StoreDataError) _then)
      : super(_value, (v) => _then(v as StoreDataError));

  @override
  StoreDataError get _value => super._value as StoreDataError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(StoreDataError(
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
class _$StoreDataError implements StoreDataError {
  const _$StoreDataError(this.error, this.stackTrace, [this.pendingId = _kStoreDataPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'StoreData.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoreDataError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $StoreDataErrorCopyWith<StoreDataError> get copyWith =>
      _$StoreDataErrorCopyWithImpl<StoreDataError>(this, _$identity);

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
    required TResult Function(StoreDataStart value) start,
    required TResult Function(StoreDataSuccessful value) successful,
    required TResult Function(StoreDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StoreDataStart value)? start,
    TResult Function(StoreDataSuccessful value)? successful,
    TResult Function(StoreDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreDataStart value)? start,
    TResult Function(StoreDataSuccessful value)? successful,
    TResult Function(StoreDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StoreDataError implements StoreData, ActionDone, ErrorAction {
  const factory StoreDataError(Object error, StackTrace stackTrace, [String pendingId]) = _$StoreDataError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $StoreDataErrorCopyWith<StoreDataError> get copyWith => throw _privateConstructorUsedError;
}

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

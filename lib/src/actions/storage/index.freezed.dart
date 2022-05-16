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
abstract class _$$GetDataStartCopyWith<$Res> implements $GetDataCopyWith<$Res> {
  factory _$$GetDataStartCopyWith(_$GetDataStart value, $Res Function(_$GetDataStart) then) =
      __$$GetDataStartCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String pendingId});
}

/// @nodoc
class __$$GetDataStartCopyWithImpl<$Res> extends _$GetDataCopyWithImpl<$Res> implements _$$GetDataStartCopyWith<$Res> {
  __$$GetDataStartCopyWithImpl(_$GetDataStart _value, $Res Function(_$GetDataStart) _then)
      : super(_value, (v) => _then(v as _$GetDataStart));

  @override
  _$GetDataStart get _value => super._value as _$GetDataStart;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(_$GetDataStart(
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

class _$GetDataStart implements GetDataStart {
  const _$GetDataStart({required this.masterKey, this.pendingId = _kGetDataPendingId});

  @override
  final String masterKey;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetData.start(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataStart &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  _$$GetDataStartCopyWith<_$GetDataStart> get copyWith =>
      __$$GetDataStartCopyWithImpl<_$GetDataStart>(this, _$identity);

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
  const factory GetDataStart({required final String masterKey, final String pendingId}) = _$GetDataStart;

  String get masterKey => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetDataStartCopyWith<_$GetDataStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDataSuccessfulCopyWith<$Res> implements $GetDataCopyWith<$Res> {
  factory _$$GetDataSuccessfulCopyWith(_$GetDataSuccessful value, $Res Function(_$GetDataSuccessful) then) =
      __$$GetDataSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({Bundle? bundle, String pendingId});

  $BundleCopyWith<$Res>? get bundle;
}

/// @nodoc
class __$$GetDataSuccessfulCopyWithImpl<$Res> extends _$GetDataCopyWithImpl<$Res>
    implements _$$GetDataSuccessfulCopyWith<$Res> {
  __$$GetDataSuccessfulCopyWithImpl(_$GetDataSuccessful _value, $Res Function(_$GetDataSuccessful) _then)
      : super(_value, (v) => _then(v as _$GetDataSuccessful));

  @override
  _$GetDataSuccessful get _value => super._value as _$GetDataSuccessful;

  @override
  $Res call({
    Object? bundle = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(_$GetDataSuccessful(
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

class _$GetDataSuccessful implements GetDataSuccessful {
  const _$GetDataSuccessful(this.bundle, [this.pendingId = _kGetDataPendingId]);

  @override
  final Bundle? bundle;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetData.successful(bundle: $bundle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataSuccessful &&
            const DeepCollectionEquality().equals(other.bundle, bundle) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bundle), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  _$$GetDataSuccessfulCopyWith<_$GetDataSuccessful> get copyWith =>
      __$$GetDataSuccessfulCopyWithImpl<_$GetDataSuccessful>(this, _$identity);

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
  const factory GetDataSuccessful(final Bundle? bundle, [final String pendingId]) = _$GetDataSuccessful;

  Bundle? get bundle => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetDataSuccessfulCopyWith<_$GetDataSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDataErrorCopyWith<$Res> implements $GetDataCopyWith<$Res> {
  factory _$$GetDataErrorCopyWith(_$GetDataError value, $Res Function(_$GetDataError) then) =
      __$$GetDataErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$GetDataErrorCopyWithImpl<$Res> extends _$GetDataCopyWithImpl<$Res> implements _$$GetDataErrorCopyWith<$Res> {
  __$$GetDataErrorCopyWithImpl(_$GetDataError _value, $Res Function(_$GetDataError) _then)
      : super(_value, (v) => _then(v as _$GetDataError));

  @override
  _$GetDataError get _value => super._value as _$GetDataError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(_$GetDataError(
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

class _$GetDataError implements GetDataError {
  const _$GetDataError(this.error, this.stackTrace, [this.pendingId = _kGetDataPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetData.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  _$$GetDataErrorCopyWith<_$GetDataError> get copyWith =>
      __$$GetDataErrorCopyWithImpl<_$GetDataError>(this, _$identity);

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
  const factory GetDataError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$GetDataError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GetDataErrorCopyWith<_$GetDataError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoreData {
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
abstract class _$$StoreDataStartCopyWith<$Res> implements $StoreDataCopyWith<$Res> {
  factory _$$StoreDataStartCopyWith(_$StoreDataStart value, $Res Function(_$StoreDataStart) then) =
      __$$StoreDataStartCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String pendingId});
}

/// @nodoc
class __$$StoreDataStartCopyWithImpl<$Res> extends _$StoreDataCopyWithImpl<$Res>
    implements _$$StoreDataStartCopyWith<$Res> {
  __$$StoreDataStartCopyWithImpl(_$StoreDataStart _value, $Res Function(_$StoreDataStart) _then)
      : super(_value, (v) => _then(v as _$StoreDataStart));

  @override
  _$StoreDataStart get _value => super._value as _$StoreDataStart;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(_$StoreDataStart(
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

class _$StoreDataStart implements StoreDataStart {
  const _$StoreDataStart({required this.masterKey, this.pendingId = _kStoreDataPendingId});

  @override
  final String masterKey;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'StoreData.start(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDataStart &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  _$$StoreDataStartCopyWith<_$StoreDataStart> get copyWith =>
      __$$StoreDataStartCopyWithImpl<_$StoreDataStart>(this, _$identity);

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
  const factory StoreDataStart({required final String masterKey, final String pendingId}) = _$StoreDataStart;

  String get masterKey => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$StoreDataStartCopyWith<_$StoreDataStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoreDataSuccessfulCopyWith<$Res> implements $StoreDataCopyWith<$Res> {
  factory _$$StoreDataSuccessfulCopyWith(_$StoreDataSuccessful value, $Res Function(_$StoreDataSuccessful) then) =
      __$$StoreDataSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class __$$StoreDataSuccessfulCopyWithImpl<$Res> extends _$StoreDataCopyWithImpl<$Res>
    implements _$$StoreDataSuccessfulCopyWith<$Res> {
  __$$StoreDataSuccessfulCopyWithImpl(_$StoreDataSuccessful _value, $Res Function(_$StoreDataSuccessful) _then)
      : super(_value, (v) => _then(v as _$StoreDataSuccessful));

  @override
  _$StoreDataSuccessful get _value => super._value as _$StoreDataSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_$StoreDataSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoreDataSuccessful implements StoreDataSuccessful {
  const _$StoreDataSuccessful([this.pendingId = _kStoreDataPendingId]);

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'StoreData.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDataSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  _$$StoreDataSuccessfulCopyWith<_$StoreDataSuccessful> get copyWith =>
      __$$StoreDataSuccessfulCopyWithImpl<_$StoreDataSuccessful>(this, _$identity);

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
  const factory StoreDataSuccessful([final String pendingId]) = _$StoreDataSuccessful;

  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$StoreDataSuccessfulCopyWith<_$StoreDataSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoreDataErrorCopyWith<$Res> implements $StoreDataCopyWith<$Res> {
  factory _$$StoreDataErrorCopyWith(_$StoreDataError value, $Res Function(_$StoreDataError) then) =
      __$$StoreDataErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$StoreDataErrorCopyWithImpl<$Res> extends _$StoreDataCopyWithImpl<$Res>
    implements _$$StoreDataErrorCopyWith<$Res> {
  __$$StoreDataErrorCopyWithImpl(_$StoreDataError _value, $Res Function(_$StoreDataError) _then)
      : super(_value, (v) => _then(v as _$StoreDataError));

  @override
  _$StoreDataError get _value => super._value as _$StoreDataError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(_$StoreDataError(
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

class _$StoreDataError implements StoreDataError {
  const _$StoreDataError(this.error, this.stackTrace, [this.pendingId = _kStoreDataPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'StoreData.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreDataError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  _$$StoreDataErrorCopyWith<_$StoreDataError> get copyWith =>
      __$$StoreDataErrorCopyWithImpl<_$StoreDataError>(this, _$identity);

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
  const factory StoreDataError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$StoreDataError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$StoreDataErrorCopyWith<_$StoreDataError> get copyWith => throw _privateConstructorUsedError;
}

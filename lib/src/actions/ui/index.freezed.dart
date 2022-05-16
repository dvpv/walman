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
mixin _$ChangeAppPage {
  AppPage get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeAppPageCopyWith<ChangeAppPage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAppPageCopyWith<$Res> {
  factory $ChangeAppPageCopyWith(ChangeAppPage value, $Res Function(ChangeAppPage) then) =
      _$ChangeAppPageCopyWithImpl<$Res>;
  $Res call({AppPage page});
}

/// @nodoc
class _$ChangeAppPageCopyWithImpl<$Res> implements $ChangeAppPageCopyWith<$Res> {
  _$ChangeAppPageCopyWithImpl(this._value, this._then);

  final ChangeAppPage _value;
  // ignore: unused_field
  final $Res Function(ChangeAppPage) _then;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as AppPage,
    ));
  }
}

/// @nodoc
abstract class _$$ChangeAppPage$CopyWith<$Res> implements $ChangeAppPageCopyWith<$Res> {
  factory _$$ChangeAppPage$CopyWith(_$ChangeAppPage$ value, $Res Function(_$ChangeAppPage$) then) =
      __$$ChangeAppPage$CopyWithImpl<$Res>;
  @override
  $Res call({AppPage page});
}

/// @nodoc
class __$$ChangeAppPage$CopyWithImpl<$Res> extends _$ChangeAppPageCopyWithImpl<$Res>
    implements _$$ChangeAppPage$CopyWith<$Res> {
  __$$ChangeAppPage$CopyWithImpl(_$ChangeAppPage$ _value, $Res Function(_$ChangeAppPage$) _then)
      : super(_value, (v) => _then(v as _$ChangeAppPage$));

  @override
  _$ChangeAppPage$ get _value => super._value as _$ChangeAppPage$;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$ChangeAppPage$(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as AppPage,
    ));
  }
}

/// @nodoc

class _$ChangeAppPage$ implements ChangeAppPage$ {
  const _$ChangeAppPage$(this.page);

  @override
  final AppPage page;

  @override
  String toString() {
    return 'ChangeAppPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAppPage$ &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$ChangeAppPage$CopyWith<_$ChangeAppPage$> get copyWith =>
      __$$ChangeAppPage$CopyWithImpl<_$ChangeAppPage$>(this, _$identity);
}

abstract class ChangeAppPage$ implements ChangeAppPage {
  const factory ChangeAppPage$(final AppPage page) = _$ChangeAppPage$;

  @override
  AppPage get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ChangeAppPage$CopyWith<_$ChangeAppPage$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetEditing {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool editing, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool editing, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool editing, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetEditingStart value) start,
    required TResult Function(SetEditingSuccessful value) successful,
    required TResult Function(SetEditingError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetEditingStart value)? start,
    TResult Function(SetEditingSuccessful value)? successful,
    TResult Function(SetEditingError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetEditingStart value)? start,
    TResult Function(SetEditingSuccessful value)? successful,
    TResult Function(SetEditingError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetEditingCopyWith<SetEditing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetEditingCopyWith<$Res> {
  factory $SetEditingCopyWith(SetEditing value, $Res Function(SetEditing) then) = _$SetEditingCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$SetEditingCopyWithImpl<$Res> implements $SetEditingCopyWith<$Res> {
  _$SetEditingCopyWithImpl(this._value, this._then);

  final SetEditing _value;
  // ignore: unused_field
  final $Res Function(SetEditing) _then;

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
abstract class _$$SetEditingStartCopyWith<$Res> implements $SetEditingCopyWith<$Res> {
  factory _$$SetEditingStartCopyWith(_$SetEditingStart value, $Res Function(_$SetEditingStart) then) =
      __$$SetEditingStartCopyWithImpl<$Res>;
  @override
  $Res call({bool editing, String pendingId});
}

/// @nodoc
class __$$SetEditingStartCopyWithImpl<$Res> extends _$SetEditingCopyWithImpl<$Res>
    implements _$$SetEditingStartCopyWith<$Res> {
  __$$SetEditingStartCopyWithImpl(_$SetEditingStart _value, $Res Function(_$SetEditingStart) _then)
      : super(_value, (v) => _then(v as _$SetEditingStart));

  @override
  _$SetEditingStart get _value => super._value as _$SetEditingStart;

  @override
  $Res call({
    Object? editing = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(_$SetEditingStart(
      editing: editing == freezed
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetEditingStart implements SetEditingStart {
  const _$SetEditingStart({required this.editing, this.pendingId = _kSetEditingPendingId});

  @override
  final bool editing;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'SetEditing.start(editing: $editing, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetEditingStart &&
            const DeepCollectionEquality().equals(other.editing, editing) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(editing), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  _$$SetEditingStartCopyWith<_$SetEditingStart> get copyWith =>
      __$$SetEditingStartCopyWithImpl<_$SetEditingStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool editing, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(editing, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool editing, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(editing, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool editing, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(editing, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetEditingStart value) start,
    required TResult Function(SetEditingSuccessful value) successful,
    required TResult Function(SetEditingError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetEditingStart value)? start,
    TResult Function(SetEditingSuccessful value)? successful,
    TResult Function(SetEditingError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetEditingStart value)? start,
    TResult Function(SetEditingSuccessful value)? successful,
    TResult Function(SetEditingError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class SetEditingStart implements SetEditing, ActionStart {
  const factory SetEditingStart({required final bool editing, final String pendingId}) = _$SetEditingStart;

  bool get editing => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SetEditingStartCopyWith<_$SetEditingStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetEditingSuccessfulCopyWith<$Res> implements $SetEditingCopyWith<$Res> {
  factory _$$SetEditingSuccessfulCopyWith(_$SetEditingSuccessful value, $Res Function(_$SetEditingSuccessful) then) =
      __$$SetEditingSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class __$$SetEditingSuccessfulCopyWithImpl<$Res> extends _$SetEditingCopyWithImpl<$Res>
    implements _$$SetEditingSuccessfulCopyWith<$Res> {
  __$$SetEditingSuccessfulCopyWithImpl(_$SetEditingSuccessful _value, $Res Function(_$SetEditingSuccessful) _then)
      : super(_value, (v) => _then(v as _$SetEditingSuccessful));

  @override
  _$SetEditingSuccessful get _value => super._value as _$SetEditingSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_$SetEditingSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetEditingSuccessful implements SetEditingSuccessful {
  const _$SetEditingSuccessful([this.pendingId = _kSetEditingPendingId]);

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'SetEditing.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetEditingSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  _$$SetEditingSuccessfulCopyWith<_$SetEditingSuccessful> get copyWith =>
      __$$SetEditingSuccessfulCopyWithImpl<_$SetEditingSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool editing, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool editing, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool editing, String pendingId)? start,
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
    required TResult Function(SetEditingStart value) start,
    required TResult Function(SetEditingSuccessful value) successful,
    required TResult Function(SetEditingError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetEditingStart value)? start,
    TResult Function(SetEditingSuccessful value)? successful,
    TResult Function(SetEditingError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetEditingStart value)? start,
    TResult Function(SetEditingSuccessful value)? successful,
    TResult Function(SetEditingError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SetEditingSuccessful implements SetEditing, ActionDone {
  const factory SetEditingSuccessful([final String pendingId]) = _$SetEditingSuccessful;

  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SetEditingSuccessfulCopyWith<_$SetEditingSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetEditingErrorCopyWith<$Res> implements $SetEditingCopyWith<$Res> {
  factory _$$SetEditingErrorCopyWith(_$SetEditingError value, $Res Function(_$SetEditingError) then) =
      __$$SetEditingErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$SetEditingErrorCopyWithImpl<$Res> extends _$SetEditingCopyWithImpl<$Res>
    implements _$$SetEditingErrorCopyWith<$Res> {
  __$$SetEditingErrorCopyWithImpl(_$SetEditingError _value, $Res Function(_$SetEditingError) _then)
      : super(_value, (v) => _then(v as _$SetEditingError));

  @override
  _$SetEditingError get _value => super._value as _$SetEditingError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(_$SetEditingError(
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

class _$SetEditingError implements SetEditingError {
  const _$SetEditingError(this.error, this.stackTrace, [this.pendingId = _kSetEditingPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'SetEditing.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetEditingError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  _$$SetEditingErrorCopyWith<_$SetEditingError> get copyWith =>
      __$$SetEditingErrorCopyWithImpl<_$SetEditingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool editing, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool editing, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool editing, String pendingId)? start,
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
    required TResult Function(SetEditingStart value) start,
    required TResult Function(SetEditingSuccessful value) successful,
    required TResult Function(SetEditingError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetEditingStart value)? start,
    TResult Function(SetEditingSuccessful value)? successful,
    TResult Function(SetEditingError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetEditingStart value)? start,
    TResult Function(SetEditingSuccessful value)? successful,
    TResult Function(SetEditingError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SetEditingError implements SetEditing, ActionDone, ErrorAction {
  const factory SetEditingError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$SetEditingError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @override
  String get pendingId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SetEditingErrorCopyWith<_$SetEditingError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectItemDetails {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value) $default, {
    required TResult Function(SelectItemDetailsSuccessful value) successful,
    required TResult Function(SelectItemDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value)? $default, {
    TResult Function(SelectItemDetailsSuccessful value)? successful,
    TResult Function(SelectItemDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value)? $default, {
    TResult Function(SelectItemDetailsSuccessful value)? successful,
    TResult Function(SelectItemDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectItemDetailsCopyWith<$Res> {
  factory $SelectItemDetailsCopyWith(SelectItemDetails value, $Res Function(SelectItemDetails) then) =
      _$SelectItemDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectItemDetailsCopyWithImpl<$Res> implements $SelectItemDetailsCopyWith<$Res> {
  _$SelectItemDetailsCopyWithImpl(this._value, this._then);

  final SelectItemDetails _value;
  // ignore: unused_field
  final $Res Function(SelectItemDetails) _then;
}

/// @nodoc
abstract class _$$SelectItemDetailsStartCopyWith<$Res> {
  factory _$$SelectItemDetailsStartCopyWith(
          _$SelectItemDetailsStart value, $Res Function(_$SelectItemDetailsStart) then) =
      __$$SelectItemDetailsStartCopyWithImpl<$Res>;
  $Res call({String id, ActionResult onResult});
}

/// @nodoc
class __$$SelectItemDetailsStartCopyWithImpl<$Res> extends _$SelectItemDetailsCopyWithImpl<$Res>
    implements _$$SelectItemDetailsStartCopyWith<$Res> {
  __$$SelectItemDetailsStartCopyWithImpl(_$SelectItemDetailsStart _value, $Res Function(_$SelectItemDetailsStart) _then)
      : super(_value, (v) => _then(v as _$SelectItemDetailsStart));

  @override
  _$SelectItemDetailsStart get _value => super._value as _$SelectItemDetailsStart;

  @override
  $Res call({
    Object? id = freezed,
    Object? onResult = freezed,
  }) {
    return _then(_$SelectItemDetailsStart(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      onResult == freezed
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$SelectItemDetailsStart implements SelectItemDetailsStart {
  const _$SelectItemDetailsStart(this.id, this.onResult);

  @override
  final String id;
  @override
  final ActionResult onResult;

  @override
  String toString() {
    return 'SelectItemDetails(id: $id, onResult: $onResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectItemDetailsStart &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.onResult, onResult) || other.onResult == onResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(id), onResult);

  @JsonKey(ignore: true)
  @override
  _$$SelectItemDetailsStartCopyWith<_$SelectItemDetailsStart> get copyWith =>
      __$$SelectItemDetailsStartCopyWithImpl<_$SelectItemDetailsStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(id, onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(id, onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, onResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value) $default, {
    required TResult Function(SelectItemDetailsSuccessful value) successful,
    required TResult Function(SelectItemDetailsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value)? $default, {
    TResult Function(SelectItemDetailsSuccessful value)? successful,
    TResult Function(SelectItemDetailsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value)? $default, {
    TResult Function(SelectItemDetailsSuccessful value)? successful,
    TResult Function(SelectItemDetailsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SelectItemDetailsStart implements SelectItemDetails {
  const factory SelectItemDetailsStart(final String id, final ActionResult onResult) = _$SelectItemDetailsStart;

  String get id => throw _privateConstructorUsedError;
  ActionResult get onResult => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SelectItemDetailsStartCopyWith<_$SelectItemDetailsStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectItemDetailsSuccessfulCopyWith<$Res> {
  factory _$$SelectItemDetailsSuccessfulCopyWith(
          _$SelectItemDetailsSuccessful value, $Res Function(_$SelectItemDetailsSuccessful) then) =
      __$$SelectItemDetailsSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectItemDetailsSuccessfulCopyWithImpl<$Res> extends _$SelectItemDetailsCopyWithImpl<$Res>
    implements _$$SelectItemDetailsSuccessfulCopyWith<$Res> {
  __$$SelectItemDetailsSuccessfulCopyWithImpl(
      _$SelectItemDetailsSuccessful _value, $Res Function(_$SelectItemDetailsSuccessful) _then)
      : super(_value, (v) => _then(v as _$SelectItemDetailsSuccessful));

  @override
  _$SelectItemDetailsSuccessful get _value => super._value as _$SelectItemDetailsSuccessful;
}

/// @nodoc

class _$SelectItemDetailsSuccessful implements SelectItemDetailsSuccessful {
  const _$SelectItemDetailsSuccessful();

  @override
  String toString() {
    return 'SelectItemDetails.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SelectItemDetailsSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value) $default, {
    required TResult Function(SelectItemDetailsSuccessful value) successful,
    required TResult Function(SelectItemDetailsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value)? $default, {
    TResult Function(SelectItemDetailsSuccessful value)? successful,
    TResult Function(SelectItemDetailsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value)? $default, {
    TResult Function(SelectItemDetailsSuccessful value)? successful,
    TResult Function(SelectItemDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SelectItemDetailsSuccessful implements SelectItemDetails {
  const factory SelectItemDetailsSuccessful() = _$SelectItemDetailsSuccessful;
}

/// @nodoc
abstract class _$$SelectItemDetailsErrorCopyWith<$Res> {
  factory _$$SelectItemDetailsErrorCopyWith(
          _$SelectItemDetailsError value, $Res Function(_$SelectItemDetailsError) then) =
      __$$SelectItemDetailsErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$SelectItemDetailsErrorCopyWithImpl<$Res> extends _$SelectItemDetailsCopyWithImpl<$Res>
    implements _$$SelectItemDetailsErrorCopyWith<$Res> {
  __$$SelectItemDetailsErrorCopyWithImpl(_$SelectItemDetailsError _value, $Res Function(_$SelectItemDetailsError) _then)
      : super(_value, (v) => _then(v as _$SelectItemDetailsError));

  @override
  _$SelectItemDetailsError get _value => super._value as _$SelectItemDetailsError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$SelectItemDetailsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$SelectItemDetailsError implements SelectItemDetailsError {
  const _$SelectItemDetailsError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SelectItemDetails.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectItemDetailsError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$SelectItemDetailsErrorCopyWith<_$SelectItemDetailsError> get copyWith =>
      __$$SelectItemDetailsErrorCopyWithImpl<_$SelectItemDetailsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, ActionResult onResult)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value) $default, {
    required TResult Function(SelectItemDetailsSuccessful value) successful,
    required TResult Function(SelectItemDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value)? $default, {
    TResult Function(SelectItemDetailsSuccessful value)? successful,
    TResult Function(SelectItemDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SelectItemDetailsStart value)? $default, {
    TResult Function(SelectItemDetailsSuccessful value)? successful,
    TResult Function(SelectItemDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SelectItemDetailsError implements SelectItemDetails, ErrorAction {
  const factory SelectItemDetailsError(final Object error, final StackTrace stackTrace) = _$SelectItemDetailsError;

  Object get error => throw _privateConstructorUsedError;
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SelectItemDetailsErrorCopyWith<_$SelectItemDetailsError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShowPassword {
  bool get show => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowPasswordCopyWith<ShowPassword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowPasswordCopyWith<$Res> {
  factory $ShowPasswordCopyWith(ShowPassword value, $Res Function(ShowPassword) then) =
      _$ShowPasswordCopyWithImpl<$Res>;
  $Res call({bool show});
}

/// @nodoc
class _$ShowPasswordCopyWithImpl<$Res> implements $ShowPasswordCopyWith<$Res> {
  _$ShowPasswordCopyWithImpl(this._value, this._then);

  final ShowPassword _value;
  // ignore: unused_field
  final $Res Function(ShowPassword) _then;

  @override
  $Res call({
    Object? show = freezed,
  }) {
    return _then(_value.copyWith(
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$ShowPassword$CopyWith<$Res> implements $ShowPasswordCopyWith<$Res> {
  factory _$$ShowPassword$CopyWith(_$ShowPassword$ value, $Res Function(_$ShowPassword$) then) =
      __$$ShowPassword$CopyWithImpl<$Res>;
  @override
  $Res call({bool show});
}

/// @nodoc
class __$$ShowPassword$CopyWithImpl<$Res> extends _$ShowPasswordCopyWithImpl<$Res>
    implements _$$ShowPassword$CopyWith<$Res> {
  __$$ShowPassword$CopyWithImpl(_$ShowPassword$ _value, $Res Function(_$ShowPassword$) _then)
      : super(_value, (v) => _then(v as _$ShowPassword$));

  @override
  _$ShowPassword$ get _value => super._value as _$ShowPassword$;

  @override
  $Res call({
    Object? show = freezed,
  }) {
    return _then(_$ShowPassword$(
      show: show == freezed
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowPassword$ implements ShowPassword$ {
  const _$ShowPassword$({required this.show});

  @override
  final bool show;

  @override
  String toString() {
    return 'ShowPassword(show: $show)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPassword$ &&
            const DeepCollectionEquality().equals(other.show, show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(show));

  @JsonKey(ignore: true)
  @override
  _$$ShowPassword$CopyWith<_$ShowPassword$> get copyWith =>
      __$$ShowPassword$CopyWithImpl<_$ShowPassword$>(this, _$identity);
}

abstract class ShowPassword$ implements ShowPassword {
  const factory ShowPassword$({required final bool show}) = _$ShowPassword$;

  @override
  bool get show => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ShowPassword$CopyWith<_$ShowPassword$> get copyWith => throw _privateConstructorUsedError;
}

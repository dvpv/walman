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
class _$ChangeAppPageTearOff {
  const _$ChangeAppPageTearOff();

  ChangeAppPage$ call(AppPage page) {
    return ChangeAppPage$(
      page,
    );
  }
}

/// @nodoc
const $ChangeAppPage = _$ChangeAppPageTearOff();

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
abstract class $ChangeAppPage$CopyWith<$Res> implements $ChangeAppPageCopyWith<$Res> {
  factory $ChangeAppPage$CopyWith(ChangeAppPage$ value, $Res Function(ChangeAppPage$) then) =
      _$ChangeAppPage$CopyWithImpl<$Res>;
  @override
  $Res call({AppPage page});
}

/// @nodoc
class _$ChangeAppPage$CopyWithImpl<$Res> extends _$ChangeAppPageCopyWithImpl<$Res>
    implements $ChangeAppPage$CopyWith<$Res> {
  _$ChangeAppPage$CopyWithImpl(ChangeAppPage$ _value, $Res Function(ChangeAppPage$) _then)
      : super(_value, (v) => _then(v as ChangeAppPage$));

  @override
  ChangeAppPage$ get _value => super._value as ChangeAppPage$;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(ChangeAppPage$(
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
            other is ChangeAppPage$ &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $ChangeAppPage$CopyWith<ChangeAppPage$> get copyWith =>
      _$ChangeAppPage$CopyWithImpl<ChangeAppPage$>(this, _$identity);
}

abstract class ChangeAppPage$ implements ChangeAppPage {
  const factory ChangeAppPage$(AppPage page) = _$ChangeAppPage$;

  @override
  AppPage get page;
  @override
  @JsonKey(ignore: true)
  $ChangeAppPage$CopyWith<ChangeAppPage$> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetEditingTearOff {
  const _$SetEditingTearOff();

  SetEditingStart start({required bool editing, String pendingId = _kSetEditingPendingId}) {
    return SetEditingStart(
      editing: editing,
      pendingId: pendingId,
    );
  }

  SetEditingSuccessful successful([String pendingId = _kSetEditingPendingId]) {
    return SetEditingSuccessful(
      pendingId,
    );
  }

  SetEditingError error(Object error, StackTrace stackTrace, [String pendingId = _kSetEditingPendingId]) {
    return SetEditingError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $SetEditing = _$SetEditingTearOff();

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
abstract class $SetEditingStartCopyWith<$Res> implements $SetEditingCopyWith<$Res> {
  factory $SetEditingStartCopyWith(SetEditingStart value, $Res Function(SetEditingStart) then) =
      _$SetEditingStartCopyWithImpl<$Res>;
  @override
  $Res call({bool editing, String pendingId});
}

/// @nodoc
class _$SetEditingStartCopyWithImpl<$Res> extends _$SetEditingCopyWithImpl<$Res>
    implements $SetEditingStartCopyWith<$Res> {
  _$SetEditingStartCopyWithImpl(SetEditingStart _value, $Res Function(SetEditingStart) _then)
      : super(_value, (v) => _then(v as SetEditingStart));

  @override
  SetEditingStart get _value => super._value as SetEditingStart;

  @override
  $Res call({
    Object? editing = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SetEditingStart(
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

@Implements<ActionStart>()
class _$SetEditingStart implements SetEditingStart {
  const _$SetEditingStart({required this.editing, this.pendingId = _kSetEditingPendingId});

  @override
  final bool editing;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SetEditing.start(editing: $editing, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetEditingStart &&
            const DeepCollectionEquality().equals(other.editing, editing) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(editing), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SetEditingStartCopyWith<SetEditingStart> get copyWith =>
      _$SetEditingStartCopyWithImpl<SetEditingStart>(this, _$identity);

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
  const factory SetEditingStart({required bool editing, String pendingId}) = _$SetEditingStart;

  bool get editing;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SetEditingStartCopyWith<SetEditingStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetEditingSuccessfulCopyWith<$Res> implements $SetEditingCopyWith<$Res> {
  factory $SetEditingSuccessfulCopyWith(SetEditingSuccessful value, $Res Function(SetEditingSuccessful) then) =
      _$SetEditingSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$SetEditingSuccessfulCopyWithImpl<$Res> extends _$SetEditingCopyWithImpl<$Res>
    implements $SetEditingSuccessfulCopyWith<$Res> {
  _$SetEditingSuccessfulCopyWithImpl(SetEditingSuccessful _value, $Res Function(SetEditingSuccessful) _then)
      : super(_value, (v) => _then(v as SetEditingSuccessful));

  @override
  SetEditingSuccessful get _value => super._value as SetEditingSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(SetEditingSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$SetEditingSuccessful implements SetEditingSuccessful {
  const _$SetEditingSuccessful([this.pendingId = _kSetEditingPendingId]);

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SetEditing.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetEditingSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SetEditingSuccessfulCopyWith<SetEditingSuccessful> get copyWith =>
      _$SetEditingSuccessfulCopyWithImpl<SetEditingSuccessful>(this, _$identity);

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
  const factory SetEditingSuccessful([String pendingId]) = _$SetEditingSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SetEditingSuccessfulCopyWith<SetEditingSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetEditingErrorCopyWith<$Res> implements $SetEditingCopyWith<$Res> {
  factory $SetEditingErrorCopyWith(SetEditingError value, $Res Function(SetEditingError) then) =
      _$SetEditingErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$SetEditingErrorCopyWithImpl<$Res> extends _$SetEditingCopyWithImpl<$Res>
    implements $SetEditingErrorCopyWith<$Res> {
  _$SetEditingErrorCopyWithImpl(SetEditingError _value, $Res Function(SetEditingError) _then)
      : super(_value, (v) => _then(v as SetEditingError));

  @override
  SetEditingError get _value => super._value as SetEditingError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(SetEditingError(
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
class _$SetEditingError implements SetEditingError {
  const _$SetEditingError(this.error, this.stackTrace, [this.pendingId = _kSetEditingPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'SetEditing.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetEditingError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $SetEditingErrorCopyWith<SetEditingError> get copyWith =>
      _$SetEditingErrorCopyWithImpl<SetEditingError>(this, _$identity);

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
  const factory SetEditingError(Object error, StackTrace stackTrace, [String pendingId]) = _$SetEditingError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $SetEditingErrorCopyWith<SetEditingError> get copyWith => throw _privateConstructorUsedError;
}

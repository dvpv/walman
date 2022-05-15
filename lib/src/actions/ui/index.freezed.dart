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

/// @nodoc
class _$SelectItemDetailsTearOff {
  const _$SelectItemDetailsTearOff();

  SelectItemDetailsStart call(String id, ActionResult onResult) {
    return SelectItemDetailsStart(
      id,
      onResult,
    );
  }

  SelectItemDetailsSuccessful successful() {
    return const SelectItemDetailsSuccessful();
  }

  SelectItemDetailsError error(Object error, StackTrace stackTrace) {
    return SelectItemDetailsError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $SelectItemDetails = _$SelectItemDetailsTearOff();

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
abstract class $SelectItemDetailsStartCopyWith<$Res> {
  factory $SelectItemDetailsStartCopyWith(SelectItemDetailsStart value, $Res Function(SelectItemDetailsStart) then) =
      _$SelectItemDetailsStartCopyWithImpl<$Res>;
  $Res call({String id, ActionResult onResult});
}

/// @nodoc
class _$SelectItemDetailsStartCopyWithImpl<$Res> extends _$SelectItemDetailsCopyWithImpl<$Res>
    implements $SelectItemDetailsStartCopyWith<$Res> {
  _$SelectItemDetailsStartCopyWithImpl(SelectItemDetailsStart _value, $Res Function(SelectItemDetailsStart) _then)
      : super(_value, (v) => _then(v as SelectItemDetailsStart));

  @override
  SelectItemDetailsStart get _value => super._value as SelectItemDetailsStart;

  @override
  $Res call({
    Object? id = freezed,
    Object? onResult = freezed,
  }) {
    return _then(SelectItemDetailsStart(
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
            other is SelectItemDetailsStart &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.onResult, onResult) || other.onResult == onResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(id), onResult);

  @JsonKey(ignore: true)
  @override
  $SelectItemDetailsStartCopyWith<SelectItemDetailsStart> get copyWith =>
      _$SelectItemDetailsStartCopyWithImpl<SelectItemDetailsStart>(this, _$identity);

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
  const factory SelectItemDetailsStart(String id, ActionResult onResult) = _$SelectItemDetailsStart;

  String get id;
  ActionResult get onResult;
  @JsonKey(ignore: true)
  $SelectItemDetailsStartCopyWith<SelectItemDetailsStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectItemDetailsSuccessfulCopyWith<$Res> {
  factory $SelectItemDetailsSuccessfulCopyWith(
          SelectItemDetailsSuccessful value, $Res Function(SelectItemDetailsSuccessful) then) =
      _$SelectItemDetailsSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectItemDetailsSuccessfulCopyWithImpl<$Res> extends _$SelectItemDetailsCopyWithImpl<$Res>
    implements $SelectItemDetailsSuccessfulCopyWith<$Res> {
  _$SelectItemDetailsSuccessfulCopyWithImpl(
      SelectItemDetailsSuccessful _value, $Res Function(SelectItemDetailsSuccessful) _then)
      : super(_value, (v) => _then(v as SelectItemDetailsSuccessful));

  @override
  SelectItemDetailsSuccessful get _value => super._value as SelectItemDetailsSuccessful;
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is SelectItemDetailsSuccessful);
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
abstract class $SelectItemDetailsErrorCopyWith<$Res> {
  factory $SelectItemDetailsErrorCopyWith(SelectItemDetailsError value, $Res Function(SelectItemDetailsError) then) =
      _$SelectItemDetailsErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$SelectItemDetailsErrorCopyWithImpl<$Res> extends _$SelectItemDetailsCopyWithImpl<$Res>
    implements $SelectItemDetailsErrorCopyWith<$Res> {
  _$SelectItemDetailsErrorCopyWithImpl(SelectItemDetailsError _value, $Res Function(SelectItemDetailsError) _then)
      : super(_value, (v) => _then(v as SelectItemDetailsError));

  @override
  SelectItemDetailsError get _value => super._value as SelectItemDetailsError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(SelectItemDetailsError(
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

@Implements<ErrorAction>()
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
            other is SelectItemDetailsError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $SelectItemDetailsErrorCopyWith<SelectItemDetailsError> get copyWith =>
      _$SelectItemDetailsErrorCopyWithImpl<SelectItemDetailsError>(this, _$identity);

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
  const factory SelectItemDetailsError(Object error, StackTrace stackTrace) = _$SelectItemDetailsError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $SelectItemDetailsErrorCopyWith<SelectItemDetailsError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShowPasswordTearOff {
  const _$ShowPasswordTearOff();

  ShowPassword$ call({required bool show}) {
    return ShowPassword$(
      show: show,
    );
  }
}

/// @nodoc
const $ShowPassword = _$ShowPasswordTearOff();

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
abstract class $ShowPassword$CopyWith<$Res> implements $ShowPasswordCopyWith<$Res> {
  factory $ShowPassword$CopyWith(ShowPassword$ value, $Res Function(ShowPassword$) then) =
      _$ShowPassword$CopyWithImpl<$Res>;
  @override
  $Res call({bool show});
}

/// @nodoc
class _$ShowPassword$CopyWithImpl<$Res> extends _$ShowPasswordCopyWithImpl<$Res>
    implements $ShowPassword$CopyWith<$Res> {
  _$ShowPassword$CopyWithImpl(ShowPassword$ _value, $Res Function(ShowPassword$) _then)
      : super(_value, (v) => _then(v as ShowPassword$));

  @override
  ShowPassword$ get _value => super._value as ShowPassword$;

  @override
  $Res call({
    Object? show = freezed,
  }) {
    return _then(ShowPassword$(
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
            other is ShowPassword$ &&
            const DeepCollectionEquality().equals(other.show, show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(show));

  @JsonKey(ignore: true)
  @override
  $ShowPassword$CopyWith<ShowPassword$> get copyWith => _$ShowPassword$CopyWithImpl<ShowPassword$>(this, _$identity);
}

abstract class ShowPassword$ implements ShowPassword {
  const factory ShowPassword$({required bool show}) = _$ShowPassword$;

  @override
  bool get show;
  @override
  @JsonKey(ignore: true)
  $ShowPassword$CopyWith<ShowPassword$> get copyWith => throw _privateConstructorUsedError;
}

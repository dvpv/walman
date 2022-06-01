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
class _$FirebaseLoginTearOff {
  const _$FirebaseLoginTearOff();

  FirebaseLoginStart start(
      {required String email,
      required String password,
      required ActionResult onResult,
      String pendingId = _kFirebaseLoginPendingId}) {
    return FirebaseLoginStart(
      email: email,
      password: password,
      onResult: onResult,
      pendingId: pendingId,
    );
  }

  FirebaseLoginSuccessful successful(
      {required FirebaseUser firebaseUser, String pendingId = _kFirebaseLoginPendingId}) {
    return FirebaseLoginSuccessful(
      firebaseUser: firebaseUser,
      pendingId: pendingId,
    );
  }

  FirebaseLoginError error(Object error, StackTrace stackTrace, [String pendingId = _kFirebaseLoginPendingId]) {
    return FirebaseLoginError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $FirebaseLogin = _$FirebaseLoginTearOff();

/// @nodoc
mixin _$FirebaseLogin {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, ActionResult onResult, String pendingId) start,
    required TResult Function(FirebaseUser firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseLoginStart value) start,
    required TResult Function(FirebaseLoginSuccessful value) successful,
    required TResult Function(FirebaseLoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseLoginStart value)? start,
    TResult Function(FirebaseLoginSuccessful value)? successful,
    TResult Function(FirebaseLoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseLoginStart value)? start,
    TResult Function(FirebaseLoginSuccessful value)? successful,
    TResult Function(FirebaseLoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseLoginCopyWith<FirebaseLogin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLoginCopyWith<$Res> {
  factory $FirebaseLoginCopyWith(FirebaseLogin value, $Res Function(FirebaseLogin) then) =
      _$FirebaseLoginCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$FirebaseLoginCopyWithImpl<$Res> implements $FirebaseLoginCopyWith<$Res> {
  _$FirebaseLoginCopyWithImpl(this._value, this._then);

  final FirebaseLogin _value;
  // ignore: unused_field
  final $Res Function(FirebaseLogin) _then;

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
abstract class $FirebaseLoginStartCopyWith<$Res> implements $FirebaseLoginCopyWith<$Res> {
  factory $FirebaseLoginStartCopyWith(FirebaseLoginStart value, $Res Function(FirebaseLoginStart) then) =
      _$FirebaseLoginStartCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, ActionResult onResult, String pendingId});
}

/// @nodoc
class _$FirebaseLoginStartCopyWithImpl<$Res> extends _$FirebaseLoginCopyWithImpl<$Res>
    implements $FirebaseLoginStartCopyWith<$Res> {
  _$FirebaseLoginStartCopyWithImpl(FirebaseLoginStart _value, $Res Function(FirebaseLoginStart) _then)
      : super(_value, (v) => _then(v as FirebaseLoginStart));

  @override
  FirebaseLoginStart get _value => super._value as FirebaseLoginStart;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? onResult = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(FirebaseLoginStart(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onResult: onResult == freezed
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$FirebaseLoginStart implements FirebaseLoginStart {
  const _$FirebaseLoginStart(
      {required this.email, required this.password, required this.onResult, this.pendingId = _kFirebaseLoginPendingId});

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResult onResult;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'FirebaseLogin.start(email: $email, password: $password, onResult: $onResult, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseLoginStart &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            (identical(other.onResult, onResult) || other.onResult == onResult) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password), onResult, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $FirebaseLoginStartCopyWith<FirebaseLoginStart> get copyWith =>
      _$FirebaseLoginStartCopyWithImpl<FirebaseLoginStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, ActionResult onResult, String pendingId) start,
    required TResult Function(FirebaseUser firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(email, password, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(email, password, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(email, password, onResult, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseLoginStart value) start,
    required TResult Function(FirebaseLoginSuccessful value) successful,
    required TResult Function(FirebaseLoginError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseLoginStart value)? start,
    TResult Function(FirebaseLoginSuccessful value)? successful,
    TResult Function(FirebaseLoginError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseLoginStart value)? start,
    TResult Function(FirebaseLoginSuccessful value)? successful,
    TResult Function(FirebaseLoginError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class FirebaseLoginStart implements FirebaseLogin, ActionStart {
  const factory FirebaseLoginStart(
      {required String email,
      required String password,
      required ActionResult onResult,
      String pendingId}) = _$FirebaseLoginStart;

  String get email;
  String get password;
  ActionResult get onResult;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $FirebaseLoginStartCopyWith<FirebaseLoginStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLoginSuccessfulCopyWith<$Res> implements $FirebaseLoginCopyWith<$Res> {
  factory $FirebaseLoginSuccessfulCopyWith(FirebaseLoginSuccessful value, $Res Function(FirebaseLoginSuccessful) then) =
      _$FirebaseLoginSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({FirebaseUser firebaseUser, String pendingId});

  $FirebaseUserCopyWith<$Res> get firebaseUser;
}

/// @nodoc
class _$FirebaseLoginSuccessfulCopyWithImpl<$Res> extends _$FirebaseLoginCopyWithImpl<$Res>
    implements $FirebaseLoginSuccessfulCopyWith<$Res> {
  _$FirebaseLoginSuccessfulCopyWithImpl(FirebaseLoginSuccessful _value, $Res Function(FirebaseLoginSuccessful) _then)
      : super(_value, (v) => _then(v as FirebaseLoginSuccessful));

  @override
  FirebaseLoginSuccessful get _value => super._value as FirebaseLoginSuccessful;

  @override
  $Res call({
    Object? firebaseUser = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(FirebaseLoginSuccessful(
      firebaseUser: firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as FirebaseUser,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $FirebaseUserCopyWith<$Res> get firebaseUser {
    return $FirebaseUserCopyWith<$Res>(_value.firebaseUser, (value) {
      return _then(_value.copyWith(firebaseUser: value));
    });
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$FirebaseLoginSuccessful implements FirebaseLoginSuccessful {
  const _$FirebaseLoginSuccessful({required this.firebaseUser, this.pendingId = _kFirebaseLoginPendingId});

  @override
  final FirebaseUser firebaseUser;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'FirebaseLogin.successful(firebaseUser: $firebaseUser, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseLoginSuccessful &&
            const DeepCollectionEquality().equals(other.firebaseUser, firebaseUser) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(firebaseUser), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $FirebaseLoginSuccessfulCopyWith<FirebaseLoginSuccessful> get copyWith =>
      _$FirebaseLoginSuccessfulCopyWithImpl<FirebaseLoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, ActionResult onResult, String pendingId) start,
    required TResult Function(FirebaseUser firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(firebaseUser, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(firebaseUser, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(firebaseUser, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseLoginStart value) start,
    required TResult Function(FirebaseLoginSuccessful value) successful,
    required TResult Function(FirebaseLoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseLoginStart value)? start,
    TResult Function(FirebaseLoginSuccessful value)? successful,
    TResult Function(FirebaseLoginError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseLoginStart value)? start,
    TResult Function(FirebaseLoginSuccessful value)? successful,
    TResult Function(FirebaseLoginError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class FirebaseLoginSuccessful implements FirebaseLogin, ActionDone {
  const factory FirebaseLoginSuccessful({required FirebaseUser firebaseUser, String pendingId}) =
      _$FirebaseLoginSuccessful;

  FirebaseUser get firebaseUser;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $FirebaseLoginSuccessfulCopyWith<FirebaseLoginSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLoginErrorCopyWith<$Res> implements $FirebaseLoginCopyWith<$Res> {
  factory $FirebaseLoginErrorCopyWith(FirebaseLoginError value, $Res Function(FirebaseLoginError) then) =
      _$FirebaseLoginErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$FirebaseLoginErrorCopyWithImpl<$Res> extends _$FirebaseLoginCopyWithImpl<$Res>
    implements $FirebaseLoginErrorCopyWith<$Res> {
  _$FirebaseLoginErrorCopyWithImpl(FirebaseLoginError _value, $Res Function(FirebaseLoginError) _then)
      : super(_value, (v) => _then(v as FirebaseLoginError));

  @override
  FirebaseLoginError get _value => super._value as FirebaseLoginError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(FirebaseLoginError(
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
class _$FirebaseLoginError implements FirebaseLoginError {
  const _$FirebaseLoginError(this.error, this.stackTrace, [this.pendingId = _kFirebaseLoginPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'FirebaseLogin.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseLoginError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $FirebaseLoginErrorCopyWith<FirebaseLoginError> get copyWith =>
      _$FirebaseLoginErrorCopyWithImpl<FirebaseLoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, ActionResult onResult, String pendingId) start,
    required TResult Function(FirebaseUser firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
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
    required TResult Function(FirebaseLoginStart value) start,
    required TResult Function(FirebaseLoginSuccessful value) successful,
    required TResult Function(FirebaseLoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseLoginStart value)? start,
    TResult Function(FirebaseLoginSuccessful value)? successful,
    TResult Function(FirebaseLoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseLoginStart value)? start,
    TResult Function(FirebaseLoginSuccessful value)? successful,
    TResult Function(FirebaseLoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FirebaseLoginError implements FirebaseLogin, ActionDone, ErrorAction {
  const factory FirebaseLoginError(Object error, StackTrace stackTrace, [String pendingId]) = _$FirebaseLoginError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $FirebaseLoginErrorCopyWith<FirebaseLoginError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FirebaseSignUpTearOff {
  const _$FirebaseSignUpTearOff();

  FirebaseSignUpStart start(
      {required String email,
      required String password,
      required String username,
      required ActionResult onResult,
      String pendingId = _kFirebaseSignUpPendingId}) {
    return FirebaseSignUpStart(
      email: email,
      password: password,
      username: username,
      onResult: onResult,
      pendingId: pendingId,
    );
  }

  FirebaseSignUpSuccessful successful(
      {required FirebaseUser firebaseUser, String pendingId = _kFirebaseSignUpPendingId}) {
    return FirebaseSignUpSuccessful(
      firebaseUser: firebaseUser,
      pendingId: pendingId,
    );
  }

  FirebaseSignUpError error(Object error, StackTrace stackTrace, [String pendingId = _kFirebaseSignUpPendingId]) {
    return FirebaseSignUpError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $FirebaseSignUp = _$FirebaseSignUpTearOff();

/// @nodoc
mixin _$FirebaseSignUp {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)
        start,
    required TResult Function(FirebaseUser firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseSignUpStart value) start,
    required TResult Function(FirebaseSignUpSuccessful value) successful,
    required TResult Function(FirebaseSignUpError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseSignUpStart value)? start,
    TResult Function(FirebaseSignUpSuccessful value)? successful,
    TResult Function(FirebaseSignUpError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseSignUpStart value)? start,
    TResult Function(FirebaseSignUpSuccessful value)? successful,
    TResult Function(FirebaseSignUpError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseSignUpCopyWith<FirebaseSignUp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseSignUpCopyWith<$Res> {
  factory $FirebaseSignUpCopyWith(FirebaseSignUp value, $Res Function(FirebaseSignUp) then) =
      _$FirebaseSignUpCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$FirebaseSignUpCopyWithImpl<$Res> implements $FirebaseSignUpCopyWith<$Res> {
  _$FirebaseSignUpCopyWithImpl(this._value, this._then);

  final FirebaseSignUp _value;
  // ignore: unused_field
  final $Res Function(FirebaseSignUp) _then;

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
abstract class $FirebaseSignUpStartCopyWith<$Res> implements $FirebaseSignUpCopyWith<$Res> {
  factory $FirebaseSignUpStartCopyWith(FirebaseSignUpStart value, $Res Function(FirebaseSignUpStart) then) =
      _$FirebaseSignUpStartCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String username, ActionResult onResult, String pendingId});
}

/// @nodoc
class _$FirebaseSignUpStartCopyWithImpl<$Res> extends _$FirebaseSignUpCopyWithImpl<$Res>
    implements $FirebaseSignUpStartCopyWith<$Res> {
  _$FirebaseSignUpStartCopyWithImpl(FirebaseSignUpStart _value, $Res Function(FirebaseSignUpStart) _then)
      : super(_value, (v) => _then(v as FirebaseSignUpStart));

  @override
  FirebaseSignUpStart get _value => super._value as FirebaseSignUpStart;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? username = freezed,
    Object? onResult = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(FirebaseSignUpStart(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      onResult: onResult == freezed
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$FirebaseSignUpStart implements FirebaseSignUpStart {
  const _$FirebaseSignUpStart(
      {required this.email,
      required this.password,
      required this.username,
      required this.onResult,
      this.pendingId = _kFirebaseSignUpPendingId});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final ActionResult onResult;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'FirebaseSignUp.start(email: $email, password: $password, username: $username, onResult: $onResult, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseSignUpStart &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            (identical(other.onResult, onResult) || other.onResult == onResult) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(username),
      onResult,
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $FirebaseSignUpStartCopyWith<FirebaseSignUpStart> get copyWith =>
      _$FirebaseSignUpStartCopyWithImpl<FirebaseSignUpStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)
        start,
    required TResult Function(FirebaseUser firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(email, password, username, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(email, password, username, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(email, password, username, onResult, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseSignUpStart value) start,
    required TResult Function(FirebaseSignUpSuccessful value) successful,
    required TResult Function(FirebaseSignUpError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseSignUpStart value)? start,
    TResult Function(FirebaseSignUpSuccessful value)? successful,
    TResult Function(FirebaseSignUpError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseSignUpStart value)? start,
    TResult Function(FirebaseSignUpSuccessful value)? successful,
    TResult Function(FirebaseSignUpError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class FirebaseSignUpStart implements FirebaseSignUp, ActionStart {
  const factory FirebaseSignUpStart(
      {required String email,
      required String password,
      required String username,
      required ActionResult onResult,
      String pendingId}) = _$FirebaseSignUpStart;

  String get email;
  String get password;
  String get username;
  ActionResult get onResult;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $FirebaseSignUpStartCopyWith<FirebaseSignUpStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseSignUpSuccessfulCopyWith<$Res> implements $FirebaseSignUpCopyWith<$Res> {
  factory $FirebaseSignUpSuccessfulCopyWith(
          FirebaseSignUpSuccessful value, $Res Function(FirebaseSignUpSuccessful) then) =
      _$FirebaseSignUpSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({FirebaseUser firebaseUser, String pendingId});

  $FirebaseUserCopyWith<$Res> get firebaseUser;
}

/// @nodoc
class _$FirebaseSignUpSuccessfulCopyWithImpl<$Res> extends _$FirebaseSignUpCopyWithImpl<$Res>
    implements $FirebaseSignUpSuccessfulCopyWith<$Res> {
  _$FirebaseSignUpSuccessfulCopyWithImpl(FirebaseSignUpSuccessful _value, $Res Function(FirebaseSignUpSuccessful) _then)
      : super(_value, (v) => _then(v as FirebaseSignUpSuccessful));

  @override
  FirebaseSignUpSuccessful get _value => super._value as FirebaseSignUpSuccessful;

  @override
  $Res call({
    Object? firebaseUser = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(FirebaseSignUpSuccessful(
      firebaseUser: firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as FirebaseUser,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $FirebaseUserCopyWith<$Res> get firebaseUser {
    return $FirebaseUserCopyWith<$Res>(_value.firebaseUser, (value) {
      return _then(_value.copyWith(firebaseUser: value));
    });
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$FirebaseSignUpSuccessful implements FirebaseSignUpSuccessful {
  const _$FirebaseSignUpSuccessful({required this.firebaseUser, this.pendingId = _kFirebaseSignUpPendingId});

  @override
  final FirebaseUser firebaseUser;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'FirebaseSignUp.successful(firebaseUser: $firebaseUser, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseSignUpSuccessful &&
            const DeepCollectionEquality().equals(other.firebaseUser, firebaseUser) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(firebaseUser), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $FirebaseSignUpSuccessfulCopyWith<FirebaseSignUpSuccessful> get copyWith =>
      _$FirebaseSignUpSuccessfulCopyWithImpl<FirebaseSignUpSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)
        start,
    required TResult Function(FirebaseUser firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(firebaseUser, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(firebaseUser, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(firebaseUser, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseSignUpStart value) start,
    required TResult Function(FirebaseSignUpSuccessful value) successful,
    required TResult Function(FirebaseSignUpError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseSignUpStart value)? start,
    TResult Function(FirebaseSignUpSuccessful value)? successful,
    TResult Function(FirebaseSignUpError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseSignUpStart value)? start,
    TResult Function(FirebaseSignUpSuccessful value)? successful,
    TResult Function(FirebaseSignUpError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class FirebaseSignUpSuccessful implements FirebaseSignUp, ActionDone {
  const factory FirebaseSignUpSuccessful({required FirebaseUser firebaseUser, String pendingId}) =
      _$FirebaseSignUpSuccessful;

  FirebaseUser get firebaseUser;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $FirebaseSignUpSuccessfulCopyWith<FirebaseSignUpSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseSignUpErrorCopyWith<$Res> implements $FirebaseSignUpCopyWith<$Res> {
  factory $FirebaseSignUpErrorCopyWith(FirebaseSignUpError value, $Res Function(FirebaseSignUpError) then) =
      _$FirebaseSignUpErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$FirebaseSignUpErrorCopyWithImpl<$Res> extends _$FirebaseSignUpCopyWithImpl<$Res>
    implements $FirebaseSignUpErrorCopyWith<$Res> {
  _$FirebaseSignUpErrorCopyWithImpl(FirebaseSignUpError _value, $Res Function(FirebaseSignUpError) _then)
      : super(_value, (v) => _then(v as FirebaseSignUpError));

  @override
  FirebaseSignUpError get _value => super._value as FirebaseSignUpError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(FirebaseSignUpError(
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
class _$FirebaseSignUpError implements FirebaseSignUpError {
  const _$FirebaseSignUpError(this.error, this.stackTrace, [this.pendingId = _kFirebaseSignUpPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'FirebaseSignUp.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseSignUpError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $FirebaseSignUpErrorCopyWith<FirebaseSignUpError> get copyWith =>
      _$FirebaseSignUpErrorCopyWithImpl<FirebaseSignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)
        start,
    required TResult Function(FirebaseUser firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String username, ActionResult onResult, String pendingId)? start,
    TResult Function(FirebaseUser firebaseUser, String pendingId)? successful,
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
    required TResult Function(FirebaseSignUpStart value) start,
    required TResult Function(FirebaseSignUpSuccessful value) successful,
    required TResult Function(FirebaseSignUpError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseSignUpStart value)? start,
    TResult Function(FirebaseSignUpSuccessful value)? successful,
    TResult Function(FirebaseSignUpError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseSignUpStart value)? start,
    TResult Function(FirebaseSignUpSuccessful value)? successful,
    TResult Function(FirebaseSignUpError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FirebaseSignUpError implements FirebaseSignUp, ActionDone, ErrorAction {
  const factory FirebaseSignUpError(Object error, StackTrace stackTrace, [String pendingId]) = _$FirebaseSignUpError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $FirebaseSignUpErrorCopyWith<FirebaseSignUpError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FirebaseLogoutTearOff {
  const _$FirebaseLogoutTearOff();

  FirebaseLogoutStart start({String pendingId = _kFirebaseLogoutPendingId}) {
    return FirebaseLogoutStart(
      pendingId: pendingId,
    );
  }

  FirebaseLogoutSuccessful successful([String pendingId = _kFirebaseLogoutPendingId]) {
    return FirebaseLogoutSuccessful(
      pendingId,
    );
  }

  FirebaseLogoutError error(Object error, StackTrace stackTrace, [String pendingId = _kFirebaseLogoutPendingId]) {
    return FirebaseLogoutError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $FirebaseLogout = _$FirebaseLogoutTearOff();

/// @nodoc
mixin _$FirebaseLogout {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirebaseLogoutStart value) start,
    required TResult Function(FirebaseLogoutSuccessful value) successful,
    required TResult Function(FirebaseLogoutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseLogoutStart value)? start,
    TResult Function(FirebaseLogoutSuccessful value)? successful,
    TResult Function(FirebaseLogoutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseLogoutStart value)? start,
    TResult Function(FirebaseLogoutSuccessful value)? successful,
    TResult Function(FirebaseLogoutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseLogoutCopyWith<FirebaseLogout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLogoutCopyWith<$Res> {
  factory $FirebaseLogoutCopyWith(FirebaseLogout value, $Res Function(FirebaseLogout) then) =
      _$FirebaseLogoutCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$FirebaseLogoutCopyWithImpl<$Res> implements $FirebaseLogoutCopyWith<$Res> {
  _$FirebaseLogoutCopyWithImpl(this._value, this._then);

  final FirebaseLogout _value;
  // ignore: unused_field
  final $Res Function(FirebaseLogout) _then;

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
abstract class $FirebaseLogoutStartCopyWith<$Res> implements $FirebaseLogoutCopyWith<$Res> {
  factory $FirebaseLogoutStartCopyWith(FirebaseLogoutStart value, $Res Function(FirebaseLogoutStart) then) =
      _$FirebaseLogoutStartCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$FirebaseLogoutStartCopyWithImpl<$Res> extends _$FirebaseLogoutCopyWithImpl<$Res>
    implements $FirebaseLogoutStartCopyWith<$Res> {
  _$FirebaseLogoutStartCopyWithImpl(FirebaseLogoutStart _value, $Res Function(FirebaseLogoutStart) _then)
      : super(_value, (v) => _then(v as FirebaseLogoutStart));

  @override
  FirebaseLogoutStart get _value => super._value as FirebaseLogoutStart;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(FirebaseLogoutStart(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$FirebaseLogoutStart implements FirebaseLogoutStart {
  const _$FirebaseLogoutStart({this.pendingId = _kFirebaseLogoutPendingId});

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'FirebaseLogout.start(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseLogoutStart &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $FirebaseLogoutStartCopyWith<FirebaseLogoutStart> get copyWith =>
      _$FirebaseLogoutStartCopyWithImpl<FirebaseLogoutStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
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
    required TResult Function(FirebaseLogoutStart value) start,
    required TResult Function(FirebaseLogoutSuccessful value) successful,
    required TResult Function(FirebaseLogoutError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseLogoutStart value)? start,
    TResult Function(FirebaseLogoutSuccessful value)? successful,
    TResult Function(FirebaseLogoutError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseLogoutStart value)? start,
    TResult Function(FirebaseLogoutSuccessful value)? successful,
    TResult Function(FirebaseLogoutError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class FirebaseLogoutStart implements FirebaseLogout, ActionStart {
  const factory FirebaseLogoutStart({String pendingId}) = _$FirebaseLogoutStart;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $FirebaseLogoutStartCopyWith<FirebaseLogoutStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLogoutSuccessfulCopyWith<$Res> implements $FirebaseLogoutCopyWith<$Res> {
  factory $FirebaseLogoutSuccessfulCopyWith(
          FirebaseLogoutSuccessful value, $Res Function(FirebaseLogoutSuccessful) then) =
      _$FirebaseLogoutSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$FirebaseLogoutSuccessfulCopyWithImpl<$Res> extends _$FirebaseLogoutCopyWithImpl<$Res>
    implements $FirebaseLogoutSuccessfulCopyWith<$Res> {
  _$FirebaseLogoutSuccessfulCopyWithImpl(FirebaseLogoutSuccessful _value, $Res Function(FirebaseLogoutSuccessful) _then)
      : super(_value, (v) => _then(v as FirebaseLogoutSuccessful));

  @override
  FirebaseLogoutSuccessful get _value => super._value as FirebaseLogoutSuccessful;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(FirebaseLogoutSuccessful(
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$FirebaseLogoutSuccessful implements FirebaseLogoutSuccessful {
  const _$FirebaseLogoutSuccessful([this.pendingId = _kFirebaseLogoutPendingId]);

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'FirebaseLogout.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseLogoutSuccessful &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $FirebaseLogoutSuccessfulCopyWith<FirebaseLogoutSuccessful> get copyWith =>
      _$FirebaseLogoutSuccessfulCopyWithImpl<FirebaseLogoutSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
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
    required TResult Function(FirebaseLogoutStart value) start,
    required TResult Function(FirebaseLogoutSuccessful value) successful,
    required TResult Function(FirebaseLogoutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseLogoutStart value)? start,
    TResult Function(FirebaseLogoutSuccessful value)? successful,
    TResult Function(FirebaseLogoutError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseLogoutStart value)? start,
    TResult Function(FirebaseLogoutSuccessful value)? successful,
    TResult Function(FirebaseLogoutError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class FirebaseLogoutSuccessful implements FirebaseLogout, ActionDone {
  const factory FirebaseLogoutSuccessful([String pendingId]) = _$FirebaseLogoutSuccessful;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $FirebaseLogoutSuccessfulCopyWith<FirebaseLogoutSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLogoutErrorCopyWith<$Res> implements $FirebaseLogoutCopyWith<$Res> {
  factory $FirebaseLogoutErrorCopyWith(FirebaseLogoutError value, $Res Function(FirebaseLogoutError) then) =
      _$FirebaseLogoutErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$FirebaseLogoutErrorCopyWithImpl<$Res> extends _$FirebaseLogoutCopyWithImpl<$Res>
    implements $FirebaseLogoutErrorCopyWith<$Res> {
  _$FirebaseLogoutErrorCopyWithImpl(FirebaseLogoutError _value, $Res Function(FirebaseLogoutError) _then)
      : super(_value, (v) => _then(v as FirebaseLogoutError));

  @override
  FirebaseLogoutError get _value => super._value as FirebaseLogoutError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(FirebaseLogoutError(
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
class _$FirebaseLogoutError implements FirebaseLogoutError {
  const _$FirebaseLogoutError(this.error, this.stackTrace, [this.pendingId = _kFirebaseLogoutPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'FirebaseLogout.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirebaseLogoutError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $FirebaseLogoutErrorCopyWith<FirebaseLogoutError> get copyWith =>
      _$FirebaseLogoutErrorCopyWithImpl<FirebaseLogoutError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
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
    required TResult Function(FirebaseLogoutStart value) start,
    required TResult Function(FirebaseLogoutSuccessful value) successful,
    required TResult Function(FirebaseLogoutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirebaseLogoutStart value)? start,
    TResult Function(FirebaseLogoutSuccessful value)? successful,
    TResult Function(FirebaseLogoutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirebaseLogoutStart value)? start,
    TResult Function(FirebaseLogoutSuccessful value)? successful,
    TResult Function(FirebaseLogoutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FirebaseLogoutError implements FirebaseLogout, ActionDone, ErrorAction {
  const factory FirebaseLogoutError(Object error, StackTrace stackTrace, [String pendingId]) = _$FirebaseLogoutError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $FirebaseLogoutErrorCopyWith<FirebaseLogoutError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetCurrentFirebaseUserTearOff {
  const _$GetCurrentFirebaseUserTearOff();

  GetCurrentFirebaseUserStart start({String pendingId = _kGetCurrentFirebaseUserPendingId}) {
    return GetCurrentFirebaseUserStart(
      pendingId: pendingId,
    );
  }

  GetCurrentFirebaseUserSuccessful successful(
      {FirebaseUser? firebaseUser, String pendingId = _kGetCurrentFirebaseUserPendingId}) {
    return GetCurrentFirebaseUserSuccessful(
      firebaseUser: firebaseUser,
      pendingId: pendingId,
    );
  }

  GetCurrentFirebaseUserError error(Object error, StackTrace stackTrace,
      [String pendingId = _kGetCurrentFirebaseUserPendingId]) {
    return GetCurrentFirebaseUserError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $GetCurrentFirebaseUser = _$GetCurrentFirebaseUserTearOff();

/// @nodoc
mixin _$GetCurrentFirebaseUser {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(FirebaseUser? firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(FirebaseUser? firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(FirebaseUser? firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentFirebaseUserStart value) start,
    required TResult Function(GetCurrentFirebaseUserSuccessful value) successful,
    required TResult Function(GetCurrentFirebaseUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentFirebaseUserStart value)? start,
    TResult Function(GetCurrentFirebaseUserSuccessful value)? successful,
    TResult Function(GetCurrentFirebaseUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentFirebaseUserStart value)? start,
    TResult Function(GetCurrentFirebaseUserSuccessful value)? successful,
    TResult Function(GetCurrentFirebaseUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetCurrentFirebaseUserCopyWith<GetCurrentFirebaseUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentFirebaseUserCopyWith<$Res> {
  factory $GetCurrentFirebaseUserCopyWith(GetCurrentFirebaseUser value, $Res Function(GetCurrentFirebaseUser) then) =
      _$GetCurrentFirebaseUserCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$GetCurrentFirebaseUserCopyWithImpl<$Res> implements $GetCurrentFirebaseUserCopyWith<$Res> {
  _$GetCurrentFirebaseUserCopyWithImpl(this._value, this._then);

  final GetCurrentFirebaseUser _value;
  // ignore: unused_field
  final $Res Function(GetCurrentFirebaseUser) _then;

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
abstract class $GetCurrentFirebaseUserStartCopyWith<$Res> implements $GetCurrentFirebaseUserCopyWith<$Res> {
  factory $GetCurrentFirebaseUserStartCopyWith(
          GetCurrentFirebaseUserStart value, $Res Function(GetCurrentFirebaseUserStart) then) =
      _$GetCurrentFirebaseUserStartCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$GetCurrentFirebaseUserStartCopyWithImpl<$Res> extends _$GetCurrentFirebaseUserCopyWithImpl<$Res>
    implements $GetCurrentFirebaseUserStartCopyWith<$Res> {
  _$GetCurrentFirebaseUserStartCopyWithImpl(
      GetCurrentFirebaseUserStart _value, $Res Function(GetCurrentFirebaseUserStart) _then)
      : super(_value, (v) => _then(v as GetCurrentFirebaseUserStart));

  @override
  GetCurrentFirebaseUserStart get _value => super._value as GetCurrentFirebaseUserStart;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(GetCurrentFirebaseUserStart(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$GetCurrentFirebaseUserStart implements GetCurrentFirebaseUserStart {
  const _$GetCurrentFirebaseUserStart({this.pendingId = _kGetCurrentFirebaseUserPendingId});

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetCurrentFirebaseUser.start(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentFirebaseUserStart &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetCurrentFirebaseUserStartCopyWith<GetCurrentFirebaseUserStart> get copyWith =>
      _$GetCurrentFirebaseUserStartCopyWithImpl<GetCurrentFirebaseUserStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(FirebaseUser? firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(FirebaseUser? firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(FirebaseUser? firebaseUser, String pendingId)? successful,
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
    required TResult Function(GetCurrentFirebaseUserStart value) start,
    required TResult Function(GetCurrentFirebaseUserSuccessful value) successful,
    required TResult Function(GetCurrentFirebaseUserError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentFirebaseUserStart value)? start,
    TResult Function(GetCurrentFirebaseUserSuccessful value)? successful,
    TResult Function(GetCurrentFirebaseUserError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentFirebaseUserStart value)? start,
    TResult Function(GetCurrentFirebaseUserSuccessful value)? successful,
    TResult Function(GetCurrentFirebaseUserError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetCurrentFirebaseUserStart implements GetCurrentFirebaseUser, ActionStart {
  const factory GetCurrentFirebaseUserStart({String pendingId}) = _$GetCurrentFirebaseUserStart;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetCurrentFirebaseUserStartCopyWith<GetCurrentFirebaseUserStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentFirebaseUserSuccessfulCopyWith<$Res> implements $GetCurrentFirebaseUserCopyWith<$Res> {
  factory $GetCurrentFirebaseUserSuccessfulCopyWith(
          GetCurrentFirebaseUserSuccessful value, $Res Function(GetCurrentFirebaseUserSuccessful) then) =
      _$GetCurrentFirebaseUserSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({FirebaseUser? firebaseUser, String pendingId});

  $FirebaseUserCopyWith<$Res>? get firebaseUser;
}

/// @nodoc
class _$GetCurrentFirebaseUserSuccessfulCopyWithImpl<$Res> extends _$GetCurrentFirebaseUserCopyWithImpl<$Res>
    implements $GetCurrentFirebaseUserSuccessfulCopyWith<$Res> {
  _$GetCurrentFirebaseUserSuccessfulCopyWithImpl(
      GetCurrentFirebaseUserSuccessful _value, $Res Function(GetCurrentFirebaseUserSuccessful) _then)
      : super(_value, (v) => _then(v as GetCurrentFirebaseUserSuccessful));

  @override
  GetCurrentFirebaseUserSuccessful get _value => super._value as GetCurrentFirebaseUserSuccessful;

  @override
  $Res call({
    Object? firebaseUser = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetCurrentFirebaseUserSuccessful(
      firebaseUser: firebaseUser == freezed
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as FirebaseUser?,
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc

@Implements<ActionDone>()
class _$GetCurrentFirebaseUserSuccessful implements GetCurrentFirebaseUserSuccessful {
  const _$GetCurrentFirebaseUserSuccessful({this.firebaseUser, this.pendingId = _kGetCurrentFirebaseUserPendingId});

  @override
  final FirebaseUser? firebaseUser;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetCurrentFirebaseUser.successful(firebaseUser: $firebaseUser, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentFirebaseUserSuccessful &&
            const DeepCollectionEquality().equals(other.firebaseUser, firebaseUser) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(firebaseUser), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetCurrentFirebaseUserSuccessfulCopyWith<GetCurrentFirebaseUserSuccessful> get copyWith =>
      _$GetCurrentFirebaseUserSuccessfulCopyWithImpl<GetCurrentFirebaseUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(FirebaseUser? firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(firebaseUser, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(FirebaseUser? firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(firebaseUser, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(FirebaseUser? firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(firebaseUser, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCurrentFirebaseUserStart value) start,
    required TResult Function(GetCurrentFirebaseUserSuccessful value) successful,
    required TResult Function(GetCurrentFirebaseUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentFirebaseUserStart value)? start,
    TResult Function(GetCurrentFirebaseUserSuccessful value)? successful,
    TResult Function(GetCurrentFirebaseUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentFirebaseUserStart value)? start,
    TResult Function(GetCurrentFirebaseUserSuccessful value)? successful,
    TResult Function(GetCurrentFirebaseUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCurrentFirebaseUserSuccessful implements GetCurrentFirebaseUser, ActionDone {
  const factory GetCurrentFirebaseUserSuccessful({FirebaseUser? firebaseUser, String pendingId}) =
      _$GetCurrentFirebaseUserSuccessful;

  FirebaseUser? get firebaseUser;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetCurrentFirebaseUserSuccessfulCopyWith<GetCurrentFirebaseUserSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentFirebaseUserErrorCopyWith<$Res> implements $GetCurrentFirebaseUserCopyWith<$Res> {
  factory $GetCurrentFirebaseUserErrorCopyWith(
          GetCurrentFirebaseUserError value, $Res Function(GetCurrentFirebaseUserError) then) =
      _$GetCurrentFirebaseUserErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$GetCurrentFirebaseUserErrorCopyWithImpl<$Res> extends _$GetCurrentFirebaseUserCopyWithImpl<$Res>
    implements $GetCurrentFirebaseUserErrorCopyWith<$Res> {
  _$GetCurrentFirebaseUserErrorCopyWithImpl(
      GetCurrentFirebaseUserError _value, $Res Function(GetCurrentFirebaseUserError) _then)
      : super(_value, (v) => _then(v as GetCurrentFirebaseUserError));

  @override
  GetCurrentFirebaseUserError get _value => super._value as GetCurrentFirebaseUserError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetCurrentFirebaseUserError(
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
class _$GetCurrentFirebaseUserError implements GetCurrentFirebaseUserError {
  const _$GetCurrentFirebaseUserError(this.error, this.stackTrace,
      [this.pendingId = _kGetCurrentFirebaseUserPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetCurrentFirebaseUser.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCurrentFirebaseUserError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetCurrentFirebaseUserErrorCopyWith<GetCurrentFirebaseUserError> get copyWith =>
      _$GetCurrentFirebaseUserErrorCopyWithImpl<GetCurrentFirebaseUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(FirebaseUser? firebaseUser, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(FirebaseUser? firebaseUser, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(FirebaseUser? firebaseUser, String pendingId)? successful,
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
    required TResult Function(GetCurrentFirebaseUserStart value) start,
    required TResult Function(GetCurrentFirebaseUserSuccessful value) successful,
    required TResult Function(GetCurrentFirebaseUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCurrentFirebaseUserStart value)? start,
    TResult Function(GetCurrentFirebaseUserSuccessful value)? successful,
    TResult Function(GetCurrentFirebaseUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCurrentFirebaseUserStart value)? start,
    TResult Function(GetCurrentFirebaseUserSuccessful value)? successful,
    TResult Function(GetCurrentFirebaseUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCurrentFirebaseUserError implements GetCurrentFirebaseUser, ActionDone, ErrorAction {
  const factory GetCurrentFirebaseUserError(Object error, StackTrace stackTrace, [String pendingId]) =
      _$GetCurrentFirebaseUserError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetCurrentFirebaseUserErrorCopyWith<GetCurrentFirebaseUserError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UnlockAppTearOff {
  const _$UnlockAppTearOff();

  UnlockAppStart start(
      {required String masterKey, required String masterKeyHash, String pendingId = _kUnlockAppPendingId}) {
    return UnlockAppStart(
      masterKey: masterKey,
      masterKeyHash: masterKeyHash,
      pendingId: pendingId,
    );
  }

  UnlockAppSuccessful successful({required String? masterKey, String pendingId = _kUnlockAppPendingId}) {
    return UnlockAppSuccessful(
      masterKey: masterKey,
      pendingId: pendingId,
    );
  }

  UnlockAppError error(Object error, StackTrace stackTrace, [String pendingId = _kUnlockAppPendingId]) {
    return UnlockAppError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $UnlockApp = _$UnlockAppTearOff();

/// @nodoc
mixin _$UnlockApp {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String masterKeyHash, String pendingId) start,
    required TResult Function(String? masterKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String masterKeyHash, String pendingId)? start,
    TResult Function(String? masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String masterKeyHash, String pendingId)? start,
    TResult Function(String? masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnlockAppStart value) start,
    required TResult Function(UnlockAppSuccessful value) successful,
    required TResult Function(UnlockAppError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnlockAppStart value)? start,
    TResult Function(UnlockAppSuccessful value)? successful,
    TResult Function(UnlockAppError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnlockAppStart value)? start,
    TResult Function(UnlockAppSuccessful value)? successful,
    TResult Function(UnlockAppError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnlockAppCopyWith<UnlockApp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnlockAppCopyWith<$Res> {
  factory $UnlockAppCopyWith(UnlockApp value, $Res Function(UnlockApp) then) = _$UnlockAppCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$UnlockAppCopyWithImpl<$Res> implements $UnlockAppCopyWith<$Res> {
  _$UnlockAppCopyWithImpl(this._value, this._then);

  final UnlockApp _value;
  // ignore: unused_field
  final $Res Function(UnlockApp) _then;

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
abstract class $UnlockAppStartCopyWith<$Res> implements $UnlockAppCopyWith<$Res> {
  factory $UnlockAppStartCopyWith(UnlockAppStart value, $Res Function(UnlockAppStart) then) =
      _$UnlockAppStartCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String masterKeyHash, String pendingId});
}

/// @nodoc
class _$UnlockAppStartCopyWithImpl<$Res> extends _$UnlockAppCopyWithImpl<$Res>
    implements $UnlockAppStartCopyWith<$Res> {
  _$UnlockAppStartCopyWithImpl(UnlockAppStart _value, $Res Function(UnlockAppStart) _then)
      : super(_value, (v) => _then(v as UnlockAppStart));

  @override
  UnlockAppStart get _value => super._value as UnlockAppStart;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? masterKeyHash = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(UnlockAppStart(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      masterKeyHash: masterKeyHash == freezed
          ? _value.masterKeyHash
          : masterKeyHash // ignore: cast_nullable_to_non_nullable
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
class _$UnlockAppStart implements UnlockAppStart {
  const _$UnlockAppStart({required this.masterKey, required this.masterKeyHash, this.pendingId = _kUnlockAppPendingId});

  @override
  final String masterKey;
  @override
  final String masterKeyHash;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'UnlockApp.start(masterKey: $masterKey, masterKeyHash: $masterKeyHash, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnlockAppStart &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.masterKeyHash, masterKeyHash) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(masterKeyHash), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $UnlockAppStartCopyWith<UnlockAppStart> get copyWith =>
      _$UnlockAppStartCopyWithImpl<UnlockAppStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String masterKeyHash, String pendingId) start,
    required TResult Function(String? masterKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(masterKey, masterKeyHash, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String masterKeyHash, String pendingId)? start,
    TResult Function(String? masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(masterKey, masterKeyHash, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String masterKeyHash, String pendingId)? start,
    TResult Function(String? masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(masterKey, masterKeyHash, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnlockAppStart value) start,
    required TResult Function(UnlockAppSuccessful value) successful,
    required TResult Function(UnlockAppError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnlockAppStart value)? start,
    TResult Function(UnlockAppSuccessful value)? successful,
    TResult Function(UnlockAppError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnlockAppStart value)? start,
    TResult Function(UnlockAppSuccessful value)? successful,
    TResult Function(UnlockAppError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class UnlockAppStart implements UnlockApp, ActionStart {
  const factory UnlockAppStart({required String masterKey, required String masterKeyHash, String pendingId}) =
      _$UnlockAppStart;

  String get masterKey;
  String get masterKeyHash;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $UnlockAppStartCopyWith<UnlockAppStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnlockAppSuccessfulCopyWith<$Res> implements $UnlockAppCopyWith<$Res> {
  factory $UnlockAppSuccessfulCopyWith(UnlockAppSuccessful value, $Res Function(UnlockAppSuccessful) then) =
      _$UnlockAppSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String? masterKey, String pendingId});
}

/// @nodoc
class _$UnlockAppSuccessfulCopyWithImpl<$Res> extends _$UnlockAppCopyWithImpl<$Res>
    implements $UnlockAppSuccessfulCopyWith<$Res> {
  _$UnlockAppSuccessfulCopyWithImpl(UnlockAppSuccessful _value, $Res Function(UnlockAppSuccessful) _then)
      : super(_value, (v) => _then(v as UnlockAppSuccessful));

  @override
  UnlockAppSuccessful get _value => super._value as UnlockAppSuccessful;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(UnlockAppSuccessful(
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

@Implements<ActionDone>()
class _$UnlockAppSuccessful implements UnlockAppSuccessful {
  const _$UnlockAppSuccessful({required this.masterKey, this.pendingId = _kUnlockAppPendingId});

  @override
  final String? masterKey;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'UnlockApp.successful(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnlockAppSuccessful &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $UnlockAppSuccessfulCopyWith<UnlockAppSuccessful> get copyWith =>
      _$UnlockAppSuccessfulCopyWithImpl<UnlockAppSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String masterKeyHash, String pendingId) start,
    required TResult Function(String? masterKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String masterKeyHash, String pendingId)? start,
    TResult Function(String? masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String masterKeyHash, String pendingId)? start,
    TResult Function(String? masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(masterKey, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnlockAppStart value) start,
    required TResult Function(UnlockAppSuccessful value) successful,
    required TResult Function(UnlockAppError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnlockAppStart value)? start,
    TResult Function(UnlockAppSuccessful value)? successful,
    TResult Function(UnlockAppError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnlockAppStart value)? start,
    TResult Function(UnlockAppSuccessful value)? successful,
    TResult Function(UnlockAppError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UnlockAppSuccessful implements UnlockApp, ActionDone {
  const factory UnlockAppSuccessful({required String? masterKey, String pendingId}) = _$UnlockAppSuccessful;

  String? get masterKey;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $UnlockAppSuccessfulCopyWith<UnlockAppSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnlockAppErrorCopyWith<$Res> implements $UnlockAppCopyWith<$Res> {
  factory $UnlockAppErrorCopyWith(UnlockAppError value, $Res Function(UnlockAppError) then) =
      _$UnlockAppErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$UnlockAppErrorCopyWithImpl<$Res> extends _$UnlockAppCopyWithImpl<$Res>
    implements $UnlockAppErrorCopyWith<$Res> {
  _$UnlockAppErrorCopyWithImpl(UnlockAppError _value, $Res Function(UnlockAppError) _then)
      : super(_value, (v) => _then(v as UnlockAppError));

  @override
  UnlockAppError get _value => super._value as UnlockAppError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(UnlockAppError(
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
class _$UnlockAppError implements UnlockAppError {
  const _$UnlockAppError(this.error, this.stackTrace, [this.pendingId = _kUnlockAppPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'UnlockApp.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnlockAppError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $UnlockAppErrorCopyWith<UnlockAppError> get copyWith =>
      _$UnlockAppErrorCopyWithImpl<UnlockAppError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String masterKeyHash, String pendingId) start,
    required TResult Function(String? masterKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String masterKeyHash, String pendingId)? start,
    TResult Function(String? masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String masterKeyHash, String pendingId)? start,
    TResult Function(String? masterKey, String pendingId)? successful,
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
    required TResult Function(UnlockAppStart value) start,
    required TResult Function(UnlockAppSuccessful value) successful,
    required TResult Function(UnlockAppError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnlockAppStart value)? start,
    TResult Function(UnlockAppSuccessful value)? successful,
    TResult Function(UnlockAppError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnlockAppStart value)? start,
    TResult Function(UnlockAppSuccessful value)? successful,
    TResult Function(UnlockAppError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UnlockAppError implements UnlockApp, ActionDone, ErrorAction {
  const factory UnlockAppError(Object error, StackTrace stackTrace, [String pendingId]) = _$UnlockAppError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $UnlockAppErrorCopyWith<UnlockAppError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateMasterKeyTearOff {
  const _$CreateMasterKeyTearOff();

  CreateMasterKeyStart start({required String masterKey, String pendingId = _kCreateMasterKeyPendingId}) {
    return CreateMasterKeyStart(
      masterKey: masterKey,
      pendingId: pendingId,
    );
  }

  CreateMasterKeySuccessful successful({required String masterKey, String pendingId = _kCreateMasterKeyPendingId}) {
    return CreateMasterKeySuccessful(
      masterKey: masterKey,
      pendingId: pendingId,
    );
  }

  CreateMasterKeyError error(Object error, StackTrace stackTrace, [String pendingId = _kCreateMasterKeyPendingId]) {
    return CreateMasterKeyError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $CreateMasterKey = _$CreateMasterKeyTearOff();

/// @nodoc
mixin _$CreateMasterKey {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String masterKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateMasterKeyStart value) start,
    required TResult Function(CreateMasterKeySuccessful value) successful,
    required TResult Function(CreateMasterKeyError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateMasterKeyStart value)? start,
    TResult Function(CreateMasterKeySuccessful value)? successful,
    TResult Function(CreateMasterKeyError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateMasterKeyStart value)? start,
    TResult Function(CreateMasterKeySuccessful value)? successful,
    TResult Function(CreateMasterKeyError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateMasterKeyCopyWith<CreateMasterKey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMasterKeyCopyWith<$Res> {
  factory $CreateMasterKeyCopyWith(CreateMasterKey value, $Res Function(CreateMasterKey) then) =
      _$CreateMasterKeyCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$CreateMasterKeyCopyWithImpl<$Res> implements $CreateMasterKeyCopyWith<$Res> {
  _$CreateMasterKeyCopyWithImpl(this._value, this._then);

  final CreateMasterKey _value;
  // ignore: unused_field
  final $Res Function(CreateMasterKey) _then;

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
abstract class $CreateMasterKeyStartCopyWith<$Res> implements $CreateMasterKeyCopyWith<$Res> {
  factory $CreateMasterKeyStartCopyWith(CreateMasterKeyStart value, $Res Function(CreateMasterKeyStart) then) =
      _$CreateMasterKeyStartCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String pendingId});
}

/// @nodoc
class _$CreateMasterKeyStartCopyWithImpl<$Res> extends _$CreateMasterKeyCopyWithImpl<$Res>
    implements $CreateMasterKeyStartCopyWith<$Res> {
  _$CreateMasterKeyStartCopyWithImpl(CreateMasterKeyStart _value, $Res Function(CreateMasterKeyStart) _then)
      : super(_value, (v) => _then(v as CreateMasterKeyStart));

  @override
  CreateMasterKeyStart get _value => super._value as CreateMasterKeyStart;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(CreateMasterKeyStart(
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
class _$CreateMasterKeyStart implements CreateMasterKeyStart {
  const _$CreateMasterKeyStart({required this.masterKey, this.pendingId = _kCreateMasterKeyPendingId});

  @override
  final String masterKey;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'CreateMasterKey.start(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateMasterKeyStart &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $CreateMasterKeyStartCopyWith<CreateMasterKeyStart> get copyWith =>
      _$CreateMasterKeyStartCopyWithImpl<CreateMasterKeyStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String masterKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String masterKey, String pendingId)? successful,
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
    required TResult Function(CreateMasterKeyStart value) start,
    required TResult Function(CreateMasterKeySuccessful value) successful,
    required TResult Function(CreateMasterKeyError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateMasterKeyStart value)? start,
    TResult Function(CreateMasterKeySuccessful value)? successful,
    TResult Function(CreateMasterKeyError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateMasterKeyStart value)? start,
    TResult Function(CreateMasterKeySuccessful value)? successful,
    TResult Function(CreateMasterKeyError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class CreateMasterKeyStart implements CreateMasterKey, ActionStart {
  const factory CreateMasterKeyStart({required String masterKey, String pendingId}) = _$CreateMasterKeyStart;

  String get masterKey;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $CreateMasterKeyStartCopyWith<CreateMasterKeyStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMasterKeySuccessfulCopyWith<$Res> implements $CreateMasterKeyCopyWith<$Res> {
  factory $CreateMasterKeySuccessfulCopyWith(
          CreateMasterKeySuccessful value, $Res Function(CreateMasterKeySuccessful) then) =
      _$CreateMasterKeySuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({String masterKey, String pendingId});
}

/// @nodoc
class _$CreateMasterKeySuccessfulCopyWithImpl<$Res> extends _$CreateMasterKeyCopyWithImpl<$Res>
    implements $CreateMasterKeySuccessfulCopyWith<$Res> {
  _$CreateMasterKeySuccessfulCopyWithImpl(
      CreateMasterKeySuccessful _value, $Res Function(CreateMasterKeySuccessful) _then)
      : super(_value, (v) => _then(v as CreateMasterKeySuccessful));

  @override
  CreateMasterKeySuccessful get _value => super._value as CreateMasterKeySuccessful;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(CreateMasterKeySuccessful(
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

@Implements<ActionDone>()
class _$CreateMasterKeySuccessful implements CreateMasterKeySuccessful {
  const _$CreateMasterKeySuccessful({required this.masterKey, this.pendingId = _kCreateMasterKeyPendingId});

  @override
  final String masterKey;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'CreateMasterKey.successful(masterKey: $masterKey, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateMasterKeySuccessful &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterKey), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $CreateMasterKeySuccessfulCopyWith<CreateMasterKeySuccessful> get copyWith =>
      _$CreateMasterKeySuccessfulCopyWithImpl<CreateMasterKeySuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String masterKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(masterKey, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(masterKey, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateMasterKeyStart value) start,
    required TResult Function(CreateMasterKeySuccessful value) successful,
    required TResult Function(CreateMasterKeyError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateMasterKeyStart value)? start,
    TResult Function(CreateMasterKeySuccessful value)? successful,
    TResult Function(CreateMasterKeyError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateMasterKeyStart value)? start,
    TResult Function(CreateMasterKeySuccessful value)? successful,
    TResult Function(CreateMasterKeyError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateMasterKeySuccessful implements CreateMasterKey, ActionDone {
  const factory CreateMasterKeySuccessful({required String masterKey, String pendingId}) = _$CreateMasterKeySuccessful;

  String get masterKey;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $CreateMasterKeySuccessfulCopyWith<CreateMasterKeySuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMasterKeyErrorCopyWith<$Res> implements $CreateMasterKeyCopyWith<$Res> {
  factory $CreateMasterKeyErrorCopyWith(CreateMasterKeyError value, $Res Function(CreateMasterKeyError) then) =
      _$CreateMasterKeyErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$CreateMasterKeyErrorCopyWithImpl<$Res> extends _$CreateMasterKeyCopyWithImpl<$Res>
    implements $CreateMasterKeyErrorCopyWith<$Res> {
  _$CreateMasterKeyErrorCopyWithImpl(CreateMasterKeyError _value, $Res Function(CreateMasterKeyError) _then)
      : super(_value, (v) => _then(v as CreateMasterKeyError));

  @override
  CreateMasterKeyError get _value => super._value as CreateMasterKeyError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(CreateMasterKeyError(
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
class _$CreateMasterKeyError implements CreateMasterKeyError {
  const _$CreateMasterKeyError(this.error, this.stackTrace, [this.pendingId = _kCreateMasterKeyPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'CreateMasterKey.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateMasterKeyError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace), const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $CreateMasterKeyErrorCopyWith<CreateMasterKeyError> get copyWith =>
      _$CreateMasterKeyErrorCopyWithImpl<CreateMasterKeyError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterKey, String pendingId) start,
    required TResult Function(String masterKey, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String masterKey, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterKey, String pendingId)? start,
    TResult Function(String masterKey, String pendingId)? successful,
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
    required TResult Function(CreateMasterKeyStart value) start,
    required TResult Function(CreateMasterKeySuccessful value) successful,
    required TResult Function(CreateMasterKeyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CreateMasterKeyStart value)? start,
    TResult Function(CreateMasterKeySuccessful value)? successful,
    TResult Function(CreateMasterKeyError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateMasterKeyStart value)? start,
    TResult Function(CreateMasterKeySuccessful value)? successful,
    TResult Function(CreateMasterKeyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateMasterKeyError implements CreateMasterKey, ActionDone, ErrorAction {
  const factory CreateMasterKeyError(Object error, StackTrace stackTrace, [String pendingId]) = _$CreateMasterKeyError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $CreateMasterKeyErrorCopyWith<CreateMasterKeyError> get copyWith => throw _privateConstructorUsedError;
}

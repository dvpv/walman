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
mixin _$CreateNewPassword {
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateNewPasswordCopyWith<CreateNewPassword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNewPasswordCopyWith<$Res> {
  factory $CreateNewPasswordCopyWith(CreateNewPassword value, $Res Function(CreateNewPassword) then) =
      _$CreateNewPasswordCopyWithImpl<$Res>;
  $Res call({Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$CreateNewPasswordCopyWithImpl<$Res> implements $CreateNewPasswordCopyWith<$Res> {
  _$CreateNewPasswordCopyWithImpl(this._value, this._then);

  final CreateNewPassword _value;
  // ignore: unused_field
  final $Res Function(CreateNewPassword) _then;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc
abstract class $CreateNewPassword$CopyWith<$Res> implements $CreateNewPasswordCopyWith<$Res> {
  factory $CreateNewPassword$CopyWith(CreateNewPassword$ value, $Res Function(CreateNewPassword$) then) =
      _$CreateNewPassword$CopyWithImpl<$Res>;
  @override
  $Res call({Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$CreateNewPassword$CopyWithImpl<$Res> extends _$CreateNewPasswordCopyWithImpl<$Res>
    implements $CreateNewPassword$CopyWith<$Res> {
  _$CreateNewPassword$CopyWithImpl(CreateNewPassword$ _value, $Res Function(CreateNewPassword$) _then)
      : super(_value, (v) => _then(v as CreateNewPassword$));

  @override
  CreateNewPassword$ get _value => super._value as CreateNewPassword$;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(CreateNewPassword$(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$CreateNewPassword$ implements CreateNewPassword$ {
  const _$CreateNewPassword$(this.password);

  @override
  final Password password;

  @override
  String toString() {
    return 'CreateNewPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateNewPassword$ &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $CreateNewPassword$CopyWith<CreateNewPassword$> get copyWith =>
      _$CreateNewPassword$CopyWithImpl<CreateNewPassword$>(this, _$identity);
}

abstract class CreateNewPassword$ implements CreateNewPassword {
  const factory CreateNewPassword$(final Password password) = _$CreateNewPassword$;

  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CreateNewPassword$CopyWith<CreateNewPassword$> get copyWith => throw _privateConstructorUsedError;
}

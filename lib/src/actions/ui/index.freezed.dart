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
  const factory ChangeAppPage$(final AppPage page) = _$ChangeAppPage$;

  @override
  AppPage get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ChangeAppPage$CopyWith<ChangeAppPage$> get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() doesNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? doesNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? doesNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoesNotExist value) doesNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DoesNotExist value)? doesNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoesNotExist value)? doesNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExceptionCopyWith<$Res> {
  factory $UserExceptionCopyWith(
          UserException value, $Res Function(UserException) then) =
      _$UserExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserExceptionCopyWithImpl<$Res>
    implements $UserExceptionCopyWith<$Res> {
  _$UserExceptionCopyWithImpl(this._value, this._then);

  final UserException _value;
  // ignore: unused_field
  final $Res Function(UserException) _then;
}

/// @nodoc
abstract class _$$_DoesNotExistCopyWith<$Res> {
  factory _$$_DoesNotExistCopyWith(
          _$_DoesNotExist value, $Res Function(_$_DoesNotExist) then) =
      __$$_DoesNotExistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DoesNotExistCopyWithImpl<$Res>
    extends _$UserExceptionCopyWithImpl<$Res>
    implements _$$_DoesNotExistCopyWith<$Res> {
  __$$_DoesNotExistCopyWithImpl(
      _$_DoesNotExist _value, $Res Function(_$_DoesNotExist) _then)
      : super(_value, (v) => _then(v as _$_DoesNotExist));

  @override
  _$_DoesNotExist get _value => super._value as _$_DoesNotExist;
}

/// @nodoc

class _$_DoesNotExist implements _DoesNotExist {
  const _$_DoesNotExist();

  @override
  String toString() {
    return 'UserException.doesNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DoesNotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() doesNotExist,
  }) {
    return doesNotExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? doesNotExist,
  }) {
    return doesNotExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? doesNotExist,
    required TResult orElse(),
  }) {
    if (doesNotExist != null) {
      return doesNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DoesNotExist value) doesNotExist,
  }) {
    return doesNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DoesNotExist value)? doesNotExist,
  }) {
    return doesNotExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DoesNotExist value)? doesNotExist,
    required TResult orElse(),
  }) {
    if (doesNotExist != null) {
      return doesNotExist(this);
    }
    return orElse();
  }
}

abstract class _DoesNotExist implements UserException {
  const factory _DoesNotExist() = _$_DoesNotExist;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_link_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateLinkDto _$CreateLinkDtoFromJson(Map<String, dynamic> json) {
  return _CreateLinkDto.fromJson(json);
}

/// @nodoc
mixin _$CreateLinkDto {
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateLinkDtoCopyWith<CreateLinkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLinkDtoCopyWith<$Res> {
  factory $CreateLinkDtoCopyWith(
          CreateLinkDto value, $Res Function(CreateLinkDto) then) =
      _$CreateLinkDtoCopyWithImpl<$Res>;
  $Res call({String link});
}

/// @nodoc
class _$CreateLinkDtoCopyWithImpl<$Res>
    implements $CreateLinkDtoCopyWith<$Res> {
  _$CreateLinkDtoCopyWithImpl(this._value, this._then);

  final CreateLinkDto _value;
  // ignore: unused_field
  final $Res Function(CreateLinkDto) _then;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateLinkDtoCopyWith<$Res>
    implements $CreateLinkDtoCopyWith<$Res> {
  factory _$$_CreateLinkDtoCopyWith(
          _$_CreateLinkDto value, $Res Function(_$_CreateLinkDto) then) =
      __$$_CreateLinkDtoCopyWithImpl<$Res>;
  @override
  $Res call({String link});
}

/// @nodoc
class __$$_CreateLinkDtoCopyWithImpl<$Res>
    extends _$CreateLinkDtoCopyWithImpl<$Res>
    implements _$$_CreateLinkDtoCopyWith<$Res> {
  __$$_CreateLinkDtoCopyWithImpl(
      _$_CreateLinkDto _value, $Res Function(_$_CreateLinkDto) _then)
      : super(_value, (v) => _then(v as _$_CreateLinkDto));

  @override
  _$_CreateLinkDto get _value => super._value as _$_CreateLinkDto;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(_$_CreateLinkDto(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class _$_CreateLinkDto implements _CreateLinkDto {
  const _$_CreateLinkDto({required this.link});

  factory _$_CreateLinkDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateLinkDtoFromJson(json);

  @override
  final String link;

  @override
  String toString() {
    return 'CreateLinkDto(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateLinkDto &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_CreateLinkDtoCopyWith<_$_CreateLinkDto> get copyWith =>
      __$$_CreateLinkDtoCopyWithImpl<_$_CreateLinkDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateLinkDtoToJson(
      this,
    );
  }
}

abstract class _CreateLinkDto implements CreateLinkDto {
  const factory _CreateLinkDto({required final String link}) = _$_CreateLinkDto;

  factory _CreateLinkDto.fromJson(Map<String, dynamic> json) =
      _$_CreateLinkDto.fromJson;

  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$_CreateLinkDtoCopyWith<_$_CreateLinkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'link_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LinkDto _$LinkDtoFromJson(Map<String, dynamic> json) {
  return _LinkDto.fromJson(json);
}

/// @nodoc
mixin _$LinkDto {
  int get id => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get shortLink => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkDtoCopyWith<LinkDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkDtoCopyWith<$Res> {
  factory $LinkDtoCopyWith(LinkDto value, $Res Function(LinkDto) then) =
      _$LinkDtoCopyWithImpl<$Res>;
  $Res call({int id, String link, String shortLink, DateTime createdAt});
}

/// @nodoc
class _$LinkDtoCopyWithImpl<$Res> implements $LinkDtoCopyWith<$Res> {
  _$LinkDtoCopyWithImpl(this._value, this._then);

  final LinkDto _value;
  // ignore: unused_field
  final $Res Function(LinkDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? shortLink = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      shortLink: shortLink == freezed
          ? _value.shortLink
          : shortLink // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_LinkDtoCopyWith<$Res> implements $LinkDtoCopyWith<$Res> {
  factory _$$_LinkDtoCopyWith(
          _$_LinkDto value, $Res Function(_$_LinkDto) then) =
      __$$_LinkDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String link, String shortLink, DateTime createdAt});
}

/// @nodoc
class __$$_LinkDtoCopyWithImpl<$Res> extends _$LinkDtoCopyWithImpl<$Res>
    implements _$$_LinkDtoCopyWith<$Res> {
  __$$_LinkDtoCopyWithImpl(_$_LinkDto _value, $Res Function(_$_LinkDto) _then)
      : super(_value, (v) => _then(v as _$_LinkDto));

  @override
  _$_LinkDto get _value => super._value as _$_LinkDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? shortLink = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_LinkDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      shortLink: shortLink == freezed
          ? _value.shortLink
          : shortLink // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_LinkDto implements _LinkDto {
  const _$_LinkDto(
      {required this.id,
      required this.link,
      required this.shortLink,
      required this.createdAt});

  factory _$_LinkDto.fromJson(Map<String, dynamic> json) =>
      _$$_LinkDtoFromJson(json);

  @override
  final int id;
  @override
  final String link;
  @override
  final String shortLink;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'LinkDto(id: $id, link: $link, shortLink: $shortLink, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinkDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.shortLink, shortLink) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(shortLink),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_LinkDtoCopyWith<_$_LinkDto> get copyWith =>
      __$$_LinkDtoCopyWithImpl<_$_LinkDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinkDtoToJson(
      this,
    );
  }
}

abstract class _LinkDto implements LinkDto {
  const factory _LinkDto(
      {required final int id,
      required final String link,
      required final String shortLink,
      required final DateTime createdAt}) = _$_LinkDto;

  factory _LinkDto.fromJson(Map<String, dynamic> json) = _$_LinkDto.fromJson;

  @override
  int get id;
  @override
  String get link;
  @override
  String get shortLink;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_LinkDtoCopyWith<_$_LinkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

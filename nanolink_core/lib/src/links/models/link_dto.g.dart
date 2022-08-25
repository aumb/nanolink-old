// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LinkDto _$$_LinkDtoFromJson(Map<String, dynamic> json) => _$_LinkDto(
      id: json['id'] as int,
      link: json['link'] as String,
      shortLink: json['short_link'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$$_LinkDtoToJson(_$_LinkDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'link': instance.link,
    'short_link': instance.shortLink,
    'created_at': instance.createdAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  return val;
}

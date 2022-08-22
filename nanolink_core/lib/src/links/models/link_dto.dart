import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_dto.freezed.dart';
part 'link_dto.g.dart';

@freezed
class LinkDto with _$LinkDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LinkDto({
    required int id,
    required String link,
    required String shortLink,
    required DateTime createdAt,
  }) = _LinkDto;

  factory LinkDto.fromJson(Map<String, dynamic> json) =>
      _$LinkDtoFromJson(json);

  static const immutableFields = ['id', 'created_at', 'short_link'];
  static const tableName = 'links';
}

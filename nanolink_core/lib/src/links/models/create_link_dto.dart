import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_link_dto.freezed.dart';
part 'create_link_dto.g.dart';

@freezed
class CreateLinkDto with _$CreateLinkDto {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory CreateLinkDto({
    required String link,
  }) = _CreateLinkDto;

  factory CreateLinkDto.fromJson(Map<String, dynamic> json) =>
      _$CreateLinkDtoFromJson(json);

  @visibleForTesting
  factory CreateLinkDto.mock() {
    return const CreateLinkDto(
      link: 'link',
    );
  }
}

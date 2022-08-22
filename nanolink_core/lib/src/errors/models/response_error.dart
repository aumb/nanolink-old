import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nanolink_core/src/errors/models/error_code.dart';

part 'response_error.freezed.dart';
part 'response_error.g.dart';

@freezed
class ResponseError with _$ResponseError {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ResponseError({
    required ErrorCode code,
    @Default(400) int statusCode,
  }) = _ResponseError;

  factory ResponseError.fromJson(Map<String, dynamic> json) =>
      _$ResponseErrorFromJson(json);
}

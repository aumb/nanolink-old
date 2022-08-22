import 'package:freezed_annotation/freezed_annotation.dart';

enum ErrorCode {
  @JsonValue('resource_not_found')
  resourceNotFound,
  @JsonValue('parsing_error')
  parsingError,
  @JsonValue('internal_server_error')
  internalServerError,
  @JsonValue('unsafe_link')
  unsafeLink,
  @JsonValue('missing_or_invalid_body_params')
  missingOrInvalidBodyParams,
}

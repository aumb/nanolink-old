import 'package:freezed_annotation/freezed_annotation.dart';

enum ErrorCode {
  @JsonValue('resource_not_found_error')
  resourceNotFoundError,
  @JsonValue('parsing_error')
  parsingError,
  @JsonValue('internal_server_error')
  internalServerError,
  @JsonValue('unsafe_link_error')
  unsafeLinkError,
  @JsonValue('missing_or_invalid_body_params_error')
  missingOrInvalidBodyParamsError,
  @JsonValue('unauthorized_error')
  unauthorizedError,
  @JsonValue('timedout_error')
  timeoutError,
  @JsonValue('sign_out_error')
  signOutError,
  @JsonValue('user_exists_error')
  userExistsError,
  @JsonValue('invalid_password_format_error')
  invalidPasswordFormatError,
  @JsonValue('invalid_email_format_error')
  invaldEmailFormatError,
  @JsonValue('email_password_sign_up_error')
  emailPasswordSignUpError,
  @JsonValue('email_password_sign_in_error')
  emailPasswordSignInError,
  @JsonValue('pending_email_error')
  pendingEmailVerificationError,
  @JsonValue('invalid_email_or_password_error')
  invalidEmailOrPasswordError,
  @JsonValue('refresh_token_error')
  refreshTokenError,
  @JsonValue('does_not_exist_error')
  doesNotExistError,
}

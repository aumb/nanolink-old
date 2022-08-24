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
  @JsonValue('unauthorized')
  unauthorized,
  @JsonValue('timedout')
  timedout,
  @JsonValue('sign_out_exception')
  signOutException,
  @JsonValue('user_exists')
  userExists,
  @JsonValue('invalid_password_format')
  invalidPasswordFormat,
  @JsonValue('invalid_email_format')
  invaldEmailFormat,
  @JsonValue('email_password_sign_up_exception')
  emailPasswordSignUpException,
  @JsonValue('email_password_sign_in_exception')
  emailPasswordSignInException,
  @JsonValue('pending_email_verification')
  pendingEmailVerification,
  @JsonValue('invalid_email_or_password')
  invalidEmailOrPassword,
}

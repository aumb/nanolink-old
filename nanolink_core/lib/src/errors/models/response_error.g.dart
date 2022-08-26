// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseError _$$_ResponseErrorFromJson(Map<String, dynamic> json) =>
    _$_ResponseError(
      code: $enumDecode(_$ErrorCodeEnumMap, json['code']),
      statusCode: json['status_code'] as int? ?? 400,
    );

Map<String, dynamic> _$$_ResponseErrorToJson(_$_ResponseError instance) =>
    <String, dynamic>{
      'code': _$ErrorCodeEnumMap[instance.code]!,
      'status_code': instance.statusCode,
    };

const _$ErrorCodeEnumMap = {
  ErrorCode.resourceNotFoundError: 'resource_not_found_error',
  ErrorCode.parsingError: 'parsing_error',
  ErrorCode.internalServerError: 'internal_server_error',
  ErrorCode.unsafeLinkError: 'unsafe_link_error',
  ErrorCode.missingOrInvalidBodyParamsError:
      'missing_or_invalid_body_params_error',
  ErrorCode.unauthorizedError: 'unauthorized_error',
  ErrorCode.timeoutError: 'timedout_error',
  ErrorCode.signOutError: 'sign_out_error',
  ErrorCode.userExistsError: 'user_exists_error',
  ErrorCode.invalidPasswordFormatError: 'invalid_password_format_error',
  ErrorCode.invaldEmailFormatError: 'invalid_email_format_error',
  ErrorCode.emailPasswordSignUpError: 'email_password_sign_up_error',
  ErrorCode.emailPasswordSignInError: 'email_password_sign_in_error',
  ErrorCode.pendingEmailVerificationError: 'pending_email_error',
  ErrorCode.invalidEmailOrPasswordError: 'invalid_email_or_password_error',
  ErrorCode.refreshTokenError: 'refresh_token_error',
  ErrorCode.doesNotExistError: 'does_not_exist_error',
};

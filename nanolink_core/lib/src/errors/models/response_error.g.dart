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
  ErrorCode.resourceNotFound: 'resource_not_found',
  ErrorCode.parsingError: 'parsing_error',
  ErrorCode.internalServerError: 'internal_server_error',
  ErrorCode.unsafeLink: 'unsafe_link',
  ErrorCode.missingOrInvalidBodyParams: 'missing_or_invalid_body_params',
  ErrorCode.unauthorized: 'unauthorized',
  ErrorCode.timedout: 'timedout',
  ErrorCode.signOutException: 'sign_out_exception',
  ErrorCode.userExists: 'user_exists',
  ErrorCode.invalidPasswordFormat: 'invalid_password_format',
  ErrorCode.invaldEmailFormat: 'invalid_email_format',
  ErrorCode.emailPasswordSignUpException: 'email_password_sign_up_exception',
  ErrorCode.emailPasswordSignInException: 'email_password_sign_in_exception',
  ErrorCode.pendingEmailVerification: 'pending_email_verification',
  ErrorCode.invalidEmailOrPassword: 'invalid_email_or_password',
};

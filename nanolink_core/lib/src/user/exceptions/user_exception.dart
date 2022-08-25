import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_exception.freezed.dart';

@freezed
class UserException with _$UserException implements Exception {
  const factory UserException.doesNotExist() = _GetUserException;
}

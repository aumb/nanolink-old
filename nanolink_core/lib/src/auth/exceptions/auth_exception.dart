import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_exception.freezed.dart';

@freezed
class AuthException with _$AuthException implements Exception {
  //sign in
  const factory AuthException.invalidEmailOrPassword() =
      _InvalidEmailOrPassword;
  const factory AuthException.pendingEmailVerification() =
      _PendingEmailVerification;
  const factory AuthException.emailPasswordSignIn() = _EmailPasswordSignIn;
  const factory AuthException.missingSignInBodyParams() =
      _MissingSignInBodyParams;
  //sign up
  const factory AuthException.emailPasswordSignUp() = _EmailPasswordSignUp;
  const factory AuthException.missingSignUpBodyParams() =
      _MissingSignUpBodyParams;
  const factory AuthException.invalidEmailFormat() = _InvalidEmailFormat;
  const factory AuthException.invalidPasswordFormat() = _InvalidPasswordFormat;
  const factory AuthException.userExists() = _UserExists;

  //sign out
  const factory AuthException.signOutException() = _SignOutException;

  //refresh token
  const factory AuthException.refreshToken() = _RefreshToken;

  //other
  const factory AuthException.timedout() = _TimedOut;
  const factory AuthException.unauthorized() = _Unauthorized;
}

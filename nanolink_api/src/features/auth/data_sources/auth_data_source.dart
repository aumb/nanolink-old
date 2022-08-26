import 'package:nanolink_core/nanolink_core.dart';

import '../use_cases/auth_use_cases.dart';

class AuthDataSourceImpl implements AuthDataSource {
  AuthDataSourceImpl(
    this._emailPasswordSignInUseCase,
    this._emailAndPasswordSignUpUseCase,
    this._signOutUseCase,
    this._refreshTokenUseCase,
  );

  final EmailPasswordSignInUseCase _emailPasswordSignInUseCase;
  final EmailPasswordSignUpUseCase _emailAndPasswordSignUpUseCase;
  final SignOutUseCase _signOutUseCase;
  final RefreshTokenUseCase _refreshTokenUseCase;

  @override
  Future<Tokens> emailAndPasswordSignIn(String email, String password) {
    return _emailPasswordSignInUseCase.run(email, password);
  }

  @override
  Future<void> emailAndPasswordSignUp(String email, String password) {
    return _emailAndPasswordSignUpUseCase.run(email, password);
  }

  @override
  Future<void> signOut(String jwt) {
    return _signOutUseCase.run(jwt);
  }

  @override
  Future<Tokens> refreshToken(String refreshToken, String jwt) {
    return _refreshTokenUseCase.run(refreshToken, jwt);
  }
}

import 'package:nanolink_core/nanolink_core.dart';

import '../use_cases/email_password_sign_in_use_case.dart';
import '../use_cases/email_password_sign_up_use_case.dart';
import '../use_cases/sign_out_use_case.dart';

class AuthDataSourceImpl implements AuthDataSource {
  AuthDataSourceImpl(
    this._emailPasswordSignInUseCase,
    this._emailAndPasswordSignUpUseCase,
    this._signOutUseCase,
  );

  final EmailPasswordSignInUseCase _emailPasswordSignInUseCase;
  final EmailPasswordSignUpUseCase _emailAndPasswordSignUpUseCase;
  final SignOutUseCase _signOutUseCase;

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
}

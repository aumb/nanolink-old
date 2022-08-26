import 'package:nanolink_core/nanolink_core.dart';

abstract class AuthDataSource {
  Future<Tokens> emailAndPasswordSignIn(String email, String password);
  Future<void> emailAndPasswordSignUp(String email, String password);
  Future<void> signOut(String jwt);
  Future<Tokens> refreshToken(String refreshToken, String jwt);
}

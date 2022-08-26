import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart';

class EmailPasswordSignInUseCase {
  EmailPasswordSignInUseCase(this._client);

  final SupabaseClient _client;

  Future<Tokens> run(String email, String password) async {
    try {
      final result = await _client.auth.api.signInWithEmail(email, password);

      if (result.error != null) {
        switch (result.error!.message) {
          case 'Invalid login credentials':
            throw const AuthException.invalidEmailOrPassword();
          case 'Email not confirmed':
            throw const AuthException.pendingEmailVerification();
          default:
            throw const AuthException.emailPasswordSignIn();
        }
      }

      if (result.data == null) {
        throw const AuthException.emailPasswordSignIn();
      }

      return Tokens(
        accessToken: result.data!.accessToken,
        refreshToken: result.data!.refreshToken,
      );
    } on AuthException catch (_) {
      rethrow;
    } catch (e) {
      throw const AuthException.emailPasswordSignIn();
    }
  }
}

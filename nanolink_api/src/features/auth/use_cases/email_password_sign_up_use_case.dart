import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart';

class EmailPasswordSignUpUseCase {
  EmailPasswordSignUpUseCase(this._client);

  final SupabaseClient _client;

//Disabled email verification because there is no straight forward way to check
//if the user exists
  Future<void> run(String email, String password) async {
    try {
      final result = await _client.auth.api.signUpWithEmail(email, password);

      if (result.error != null) {
        switch (result.error?.message) {
          case 'Unable to validate email address':
            throw const AuthException.invalidEmailFormat();
          case 'Password should be at least 6 characters':
            throw const AuthException.invalidPasswordFormat();
          case 'User already registered':
            throw const AuthException.userExists();
          default:
            // TODO(aumb): check if this is global
            if (result.error!.message
                .contains('you can only request this after')) {
              throw const AuthException.timedout();
            } else {
              throw const AuthException.emailPasswordSignUpException();
            }
        }
      }
    } on AuthException catch (_) {
      rethrow;
    } catch (e) {
      throw const AuthException.emailPasswordSignUpException();
    }
  }
}

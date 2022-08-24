import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart';

class SignOutUseCase {
  SignOutUseCase(this._client);

  final SupabaseClient _client;

  Future<void> run(String jwt) async {
    try {
      final result = await _client.auth.api.signOut(jwt);

      if (result.error != null) {
        switch (result.error!.message) {
          case 'Invalid token: token contains an invalid number of segments':
          case 'Invalid token: signature is invalid':
          default:
            throw const AuthException.signOutException();
        }
      }
    } on AuthException catch (_) {
      rethrow;
    } catch (e) {
      throw const AuthException.signOutException();
    }
  }
}

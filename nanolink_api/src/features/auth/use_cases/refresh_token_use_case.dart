import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart';

class RefreshTokenUseCase {
  RefreshTokenUseCase(this._client);

  final SupabaseClient _client;

  Future<Tokens> run(String refreshToken, String jwt) async {
    try {
      final result =
          await _client.auth.api.refreshAccessToken(refreshToken, jwt);

      if (result.error != null) {
        switch (result.error!.message) {
          case 'Invalid token: token contains an invalid number of segments':
          case 'Invalid token: signature is invalid':
          default:
            throw const AuthException.refreshToken();
        }
      }

      return Tokens(
        accessToken: result.data!.accessToken,
        refreshToken: result.data!.refreshToken,
      );
    } on AuthException catch (_) {
      rethrow;
    } catch (e) {
      throw const AuthException.signOutException();
    }
  }
}

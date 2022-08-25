import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart' hide User;

class GetCurrentUserUseCase {
  GetCurrentUserUseCase(this._client);

  final SupabaseClient _client;

  Future<User> run(String jwt) async {
    final result = await _client.auth.api.getUser(jwt);

    if (result.data == null || result.data!.email == null) {
      throw const UserException.doesNotExist();
    }

    return User(
      id: result.data!.id,
      email: result.data!.email!,
    );
  }
}

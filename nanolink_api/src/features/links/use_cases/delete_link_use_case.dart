import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart' hide User;

class DeleteLinkUseCase {
  DeleteLinkUseCase(this._client);

  final SupabaseClient _client;

  Future<LinkDto> run(int id, User user) async {
    final response = await _client
        .from(LinkDto.tableName)
        .delete()
        .eq('id', id)
        .eq('user_id', user.id)
        .maybeSingle()
        .execute()
        .catchError(
          (_) => throw const LinksException.deleteLink(),
        );
    final data = response.data as Map<String, dynamic>?;

    if (data != null) {
      try {
        final link = LinkDto.fromJson(data);

        return link;
      } catch (_) {
        throw const LinksException.linkDeserialization();
      }
    } else {
      throw const LinksException.deleteLink();
    }
  }
}

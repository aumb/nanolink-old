import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart';

class DeleteLinkUseCase {
  DeleteLinkUseCase(this._client);

  final SupabaseClient _client;

  Future<LinkDto> run(int id) async {
    final response = await _client
        .from(LinkDto.tableName)
        .delete()
        .eq('id', id)
        .maybeSingle()
        .execute()
        .catchError(
          (_) => throw const LinksException.deleteLinkException(),
        );
    final data = response.data as Map<String, dynamic>?;

    if (data != null) {
      try {
        final link = LinkDto.fromJson(data);

        return link;
      } catch (_) {
        throw const LinksException.linkDeserializationException();
      }
    } else {
      throw const LinksException.deleteLinkException();
    }
  }
}

import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart';

class GetLinkUseCase {
  GetLinkUseCase(this._client);

  final SupabaseClient _client;

  Future<LinkDto> run(int id) async {
    final response = await _client
        .from(LinkDto.tableName)
        .select()
        .eq('id', id)
        .maybeSingle()
        .execute()
        .catchError(
          (_) => throw const LinksException.getLinkException(),
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
      throw const LinksException.linkDoesNotExistException();
    }
  }
}

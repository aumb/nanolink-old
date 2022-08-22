import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart';

class GetAllLinksUseCase {
  GetAllLinksUseCase(this._client);

  final SupabaseClient _client;

  Future<List<LinkDto>> run() async {
    final response =
        await _client.from(LinkDto.tableName).select().execute().catchError(
              (_) => throw const LinksException.getLinksException(),
            );

    final data = List<Map<String, dynamic>>.from(response.data as List? ?? []);

    try {
      return data.map(LinkDto.fromJson).toList();
    } catch (_) {
      throw const LinksException.linksDeserializationException();
    }
  }
}

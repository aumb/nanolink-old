import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart' hide User;

class GetAllLinksUseCase {
  GetAllLinksUseCase(this._client);

  final SupabaseClient _client;

  Future<List<LinkDto>> run(User user) async {
    final response = await _client
        .from(LinkDto.tableName)
        .select()
        .eq('user_id', user.id)
        .execute()
        .catchError(
          (_) => throw const LinksException.getLinks(),
        );

    final data = List<Map<String, dynamic>>.from(response.data as List? ?? []);

    try {
      return data.map(LinkDto.fromJson).toList();
    } catch (_) {
      throw const LinksException.linksDeserialization();
    }
  }
}

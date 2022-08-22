import 'package:nanolink_core/nanolink_core.dart';
import 'package:shortid/shortid.dart';
import 'package:supabase/supabase.dart';

import '../../../resources/extensions/map_extensions.dart';

class CreateLinkUseCase {
  CreateLinkUseCase(this._client);

  final SupabaseClient _client;

  Future<LinkDto> run(Map<String, dynamic> link) async {
    final linkDtoMap = link.removeAll(LinkDto.immutableFields);
    if ((linkDtoMap['link'] as String).isEmpty) {
      throw const LinksException.linkMissingOrInvalidBodyParams();
    }
    linkDtoMap['short_link'] = shortid.generate();

    final response = await _client
        .from(LinkDto.tableName)
        .insert(linkDtoMap)
        .execute()
        .catchError(
          (Object e, StackTrace s) =>
              throw const LinksException.createLinkException(),
        );
    final data = List<Map<String, dynamic>>.from(response.data as List? ?? []);

    if (data.isNotEmpty) {
      try {
        final link = LinkDto.fromJson(data.first);

        return link;
      } catch (_) {
        throw const LinksException.linkDeserializationException();
      }
    } else {
      throw const LinksException.createLinkException();
    }
  }
}

import 'package:nanolink_core/nanolink_core.dart';
import 'package:shortid/shortid.dart';
import 'package:supabase/supabase.dart' hide User;

class CreateLinkUseCase {
  CreateLinkUseCase(
    this._client,
  );

  final SupabaseClient _client;

  Future<LinkDto> run(CreateLinkDto createLinkDto, User? user) async {
    final shouldThrow = createLinkDto.link.isEmpty || user == null;

    if (shouldThrow) {
      throw const LinksException.linkMissingOrInvalidBodyParams();
    }

    final shortLink = shortid.generate();
    final linkDtoMap = createLinkDto.toJson();
    linkDtoMap['short_link'] = shortLink;
    linkDtoMap['user_id'] = user.id;

    final response = await _client
        .from(LinkDto.tableName)
        .insert(linkDtoMap)
        .execute()
        .catchError(
          (_) => throw const LinksException.createLinkException(),
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

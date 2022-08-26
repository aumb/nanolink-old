import 'package:nanolink_core/nanolink_core.dart';
import 'package:shortid/shortid.dart';
import 'package:supabase/supabase.dart' hide User;

class CreateLinkUseCase {
  CreateLinkUseCase(
    this._client,
  );

  final SupabaseClient _client;

  Future<LinkDto> run(CreateLinkDto createLinkDto, User? user) async {
    final _urlRegex = RegExp(
      r'^(?:http|https):\/\/[\w\-_]+(?:\.[\w\-_]+)+[\w\-.,@?^=%&:/~\\+#]*$',
    );
    final shouldThrow = createLinkDto.link.isEmpty ||
        !_urlRegex.hasMatch(
          createLinkDto.link,
        );

    if (shouldThrow) {
      throw const LinksException.linkMissingOrInvalidBodyParams();
    }

    final linkDtoMap = createLinkDto.toJson();
    if (user != null) linkDtoMap['user_id'] = user.id;
    final shortLink = shortid.generate();
    linkDtoMap['short_link'] = shortLink;

    final response = await _client
        .from(LinkDto.tableName)
        .insert(linkDtoMap)
        .execute()
        .catchError(
          (_) => throw const LinksException.createLink(),
        );
    final data = List<Map<String, dynamic>>.from(response.data as List? ?? []);

    if (data.isNotEmpty) {
      try {
        final link = LinkDto.fromJson(data.first);

        return link;
      } catch (_) {
        throw const LinksException.linkDeserialization();
      }
    } else {
      throw const LinksException.createLink();
    }
  }
}

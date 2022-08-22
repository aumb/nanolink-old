import 'package:nanolink_core/nanolink_core.dart';
import 'package:supabase/supabase.dart';

import 'check_link_safety_use_case.dart';
import 'get_link_use_case.dart';

class UpdateLinkUseCase {
  UpdateLinkUseCase(
    this._client,
    this._getLinkUseCase,
    this._checkLinkSafetyUseCase,
  );

  final SupabaseClient _client;
  final GetLinkUseCase _getLinkUseCase;
  final CheckLinkSafetyUseCase _checkLinkSafetyUseCase;

  Future<LinkDto> run(int id, Map<String, dynamic> linkData) async {
    var linkDto = await _getLinkUseCase.run(id);

    if (linkData.containsKey('link')) {
      final linkValue = linkData['link'] as String? ?? '';

      final isSafe = await _checkLinkSafetyUseCase.run(linkValue);
      if (isSafe) {
        linkDto = linkDto.copyWith(link: linkValue);
      } else {
        throw const LinksException.linkUnsafeException();
      }
    }

    final response = await _client
        .from(LinkDto.tableName)
        .update(linkDto.toJson())
        .eq('id', id)
        .maybeSingle()
        .execute()
        .catchError(
          (_) => throw const LinksException.updateLinkException(),
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

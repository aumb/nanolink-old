import 'package:nanolink_core/nanolink_core.dart';
import 'package:nanolink_core/src/links/models/models.dart';

abstract class LinksDataSource {
  Future<LinkDto> create(CreateLinkDto link, String? jwt);

  Future<List<LinkDto>> getAll(String jwt);

  Future<LinkDto> delete(int id, String jwt);
}

import 'package:nanolink_core/nanolink_core.dart';

abstract class LinksDataSource {
  Future<LinkDto> create(Map<String, dynamic> link);

  Future<List<LinkDto>> getAll();

  Future<LinkDto?> get(int id);

  Future<LinkDto> update(int id, Map<String, dynamic> link);

  Future<LinkDto> delete(int id);
}

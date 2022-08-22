import 'package:nanolink_core/nanolink_core.dart';
import '../use_cases/links_use_cases.dart';

class LinksDataSourceImpl implements LinksDataSource {
  const LinksDataSourceImpl(
    this._getLinkUseCase,
    this._createLinkUseCase,
    this._updateLinkUseCase,
    this._deleteLinkUseCase,
    this._getAllLinksUseCase,
  );

  final GetLinkUseCase _getLinkUseCase;
  final CreateLinkUseCase _createLinkUseCase;
  final UpdateLinkUseCase _updateLinkUseCase;
  final DeleteLinkUseCase _deleteLinkUseCase;
  final GetAllLinksUseCase _getAllLinksUseCase;

  @override
  Future<LinkDto> create(Map<String, dynamic> link) {
    return _createLinkUseCase.run(link);
  }

  @override
  Future<LinkDto> delete(int id) {
    return _deleteLinkUseCase.run(id);
  }

  @override
  Future<LinkDto> get(int id) {
    return _getLinkUseCase.run(id);
  }

  @override
  Future<List<LinkDto>> getAll() async {
    return _getAllLinksUseCase.run();
  }

  @override
  Future<LinkDto> update(int id, Map<String, dynamic> linkData) async {
    return _updateLinkUseCase.run(id, linkData);
  }
}

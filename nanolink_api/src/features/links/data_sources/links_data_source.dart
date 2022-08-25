import 'package:nanolink_core/nanolink_core.dart';
import '../../user/use_cases/get_current_user_use_case.dart';
import '../use_cases/links_use_cases.dart';

class LinksDataSourceImpl implements LinksDataSource {
  const LinksDataSourceImpl(
    this._getLinkUseCase,
    this._createLinkUseCase,
    this._updateLinkUseCase,
    this._deleteLinkUseCase,
    this._getAllLinksUseCase,
    this._getCurrentUserUseCase,
  );

  final GetLinkUseCase _getLinkUseCase;
  final CreateLinkUseCase _createLinkUseCase;
  final UpdateLinkUseCase _updateLinkUseCase;
  final DeleteLinkUseCase _deleteLinkUseCase;
  final GetAllLinksUseCase _getAllLinksUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;

  @override
  Future<LinkDto> create(CreateLinkDto link, String? jwt) async {
    User? user;

    if (jwt != null) {
      user = await _getCurrentUserUseCase.run(jwt);
    }

    return _createLinkUseCase.run(link, user);
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

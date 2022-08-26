import 'package:nanolink_core/nanolink_core.dart';
import '../../user/use_cases/get_current_user_use_case.dart';
import '../use_cases/links_use_cases.dart';

class LinksDataSourceImpl implements LinksDataSource {
  const LinksDataSourceImpl(
    this._createLinkUseCase,
    this._deleteLinkUseCase,
    this._getAllLinksUseCase,
    this._getCurrentUserUseCase,
  );

  final CreateLinkUseCase _createLinkUseCase;
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
  Future<LinkDto> delete(int id, String jwt) async {
    final user = await _getCurrentUserUseCase.run(jwt);
    final link = _deleteLinkUseCase.run(id, user);
    return link;
  }

  @override
  Future<List<LinkDto>> getAll(String jwt) async {
    final user = await _getCurrentUserUseCase.run(jwt);
    final links = _getAllLinksUseCase.run(user);
    return links;
  }
}

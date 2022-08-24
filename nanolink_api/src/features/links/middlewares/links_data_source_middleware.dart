import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../../routes/_middleware.dart';
import '../data_sources/links_data_source.dart';
import '../use_cases/check_link_safety_use_case.dart';
import '../use_cases/links_use_cases.dart';

final _getAllLinksUseCase = GetAllLinksUseCase(dbClient);
final _getLinkUseCase = GetLinkUseCase(dbClient);
final _createLinkUseCase = CreateLinkUseCase(dbClient);
final _deleteLinkUseCase = DeleteLinkUseCase(dbClient);
final _checkLinkSafetyUseCase = CheckLinkSafetyUseCase();
final _updateLinkUseCase =
    UpdateLinkUseCase(dbClient, _getLinkUseCase, _checkLinkSafetyUseCase);

Middleware linksDataSourceInjector() {
  return provider<LinksDataSource>(
    (_) => LinksDataSourceImpl(
      _getLinkUseCase,
      _createLinkUseCase,
      _updateLinkUseCase,
      _deleteLinkUseCase,
      _getAllLinksUseCase,
    ),
  );
}

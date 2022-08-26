import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../../routes/_middleware.dart';
import '../../user/use_cases/get_current_user_use_case.dart';
import '../data_sources/links_data_source.dart';
import '../use_cases/links_use_cases.dart';

final _getAllLinksUseCase = GetAllLinksUseCase(dbClient);
final _createLinkUseCase = CreateLinkUseCase(dbClient);
final _deleteLinkUseCase = DeleteLinkUseCase(dbClient);
final _getCurrentUserUseCase = GetCurrentUserUseCase(dbClient);

Middleware linksDataSourceInjectorMiddleware() {
  return provider<LinksDataSource>(
    (_) => LinksDataSourceImpl(
      _createLinkUseCase,
      _deleteLinkUseCase,
      _getAllLinksUseCase,
      _getCurrentUserUseCase,
    ),
  );
}

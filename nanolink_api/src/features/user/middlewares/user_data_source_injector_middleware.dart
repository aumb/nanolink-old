import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../../routes/_middleware.dart';
import '../data_sources/user_data_source.dart';
import '../use_cases/user_use_cases.dart';

final _getCurrentUserUseCase = GetCurrentUserUseCase(dbClient);

Middleware userDataSourceInjectorMiddleware() {
  return provider<UserDataSource>(
    (_) => UserDataSourceImpl(
      _getCurrentUserUseCase,
    ),
  );
}

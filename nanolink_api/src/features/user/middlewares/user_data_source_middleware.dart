import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../../routes/_middleware.dart';
import '../data_sources/user_data_source.dart';
import '../use_cases/get_current_user_use_case.dart';

final _getCurrentUserUseCase = GetCurrentUserUseCase(dbClient);

Middleware userDataSourceInjector() {
  return provider<UserDataSource>(
    (_) => UserDataSourceImpl(
      _getCurrentUserUseCase,
    ),
  );
}
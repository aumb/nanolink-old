import 'package:dart_frog/dart_frog.dart';
import 'package:nanolink_core/nanolink_core.dart';

import '../../../../routes/_middleware.dart';
import '../data_sources/auth_data_source.dart';
import '../use_cases/auth_use_cases.dart';

final _emailAndPasswordSignInUseCase = EmailPasswordSignInUseCase(dbClient);
final _emailAndPasswordSignUpUseCase = EmailPasswordSignUpUseCase(dbClient);
final _signOutUseCase = SignOutUseCase(dbClient);
final _refreshTokenUseCase = RefreshTokenUseCase(dbClient);

Middleware authDataSourceInjectorMiddleware() {
  return provider<AuthDataSource>(
    (_) => AuthDataSourceImpl(
      _emailAndPasswordSignInUseCase,
      _emailAndPasswordSignUpUseCase,
      _signOutUseCase,
      _refreshTokenUseCase,
    ),
  );
}

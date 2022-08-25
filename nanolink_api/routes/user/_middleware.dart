import 'package:dart_frog/dart_frog.dart';

import '../../src/features/auth/middlewares/auth_middleware.dart';
import '../../src/features/user/middlewares/user_data_source_middleware.dart';

Handler middleware(Handler handler) {
  return handler.use(userDataSourceInjector()).use(authHandlerMiddleware());
}

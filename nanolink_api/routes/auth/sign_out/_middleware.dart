import 'package:dart_frog/dart_frog.dart';

import '../../../src/features/auth/middlewares/auth_data_source_injector_middleware.dart';
import '../../../src/features/auth/middlewares/auth_handler_middleware.dart';

Handler middleware(Handler handler) {
  return handler
      .use(authDataSourceInjectorMiddleware())
      .use(authHandlerMiddleware());
}

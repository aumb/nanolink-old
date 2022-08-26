import 'package:dart_frog/dart_frog.dart';

import '../../src/features/auth/middlewares/auth_handler_middleware.dart';
import '../../src/features/links/middlewares/links_data_source_injector_middleware.dart';

Handler middleware(Handler handler) {
  return handler
      .use(authHandlerMiddleware(isOptional: true))
      .use(linksDataSourceInjectorMiddleware());
}

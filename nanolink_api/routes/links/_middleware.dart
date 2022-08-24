import 'package:dart_frog/dart_frog.dart';

import '../../src/features/links/middlewares/links_data_source_middleware.dart';

Handler middleware(Handler handler) {
  return handler.use(linksDataSourceInjector());
}

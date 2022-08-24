import 'package:dart_frog/dart_frog.dart';
import 'package:dotenv/dotenv.dart';
import 'package:supabase/supabase.dart';

import '../config.dart';
import '../src/server/middlewares/error_handler_middleware.dart';

final _env = DotEnv()..load();
final _config = Config.fromEnv(_env);
final dbClient = SupabaseClient(_config.dbUrl, _config.dbKey);

Handler middleware(Handler handler) {
  return handler.use(errorHandlerMiddleware()).use(requestLogger());
}

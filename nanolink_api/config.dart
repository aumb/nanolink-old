import 'package:dotenv/dotenv.dart';

class Config {
  const Config({
    required this.dbUrl,
    required this.dbKey,
  });

  factory Config.fromEnv(DotEnv env) {
    final dbUrl = env['DB_URL'];
    final dbKey = env['DB_KEY'];

    assert(
      dbUrl != null && dbUrl.isNotEmpty,
      'DB_URL cannot be null or empty, add a correct value to your .env file',
    );

    assert(
      dbUrl != null && dbUrl.isNotEmpty,
      'DB_KEY cannot be null or empty, add a correct value to your .env file',
    );

    return Config(
      dbUrl: dbUrl!,
      dbKey: dbKey!,
    );
  }

  final String dbUrl;
  final String dbKey;
}

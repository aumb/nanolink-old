class AppConfig {
  AppConfig({
    required this.baseUrl,
  });

  factory AppConfig.fromEnv(Map<String, dynamic> env) {
    final baseUrl = env['BASE_URL'] as String?;

    assert(
      baseUrl != null && baseUrl.isNotEmpty,
      'Please provide a valid base url',
    );

    return AppConfig(baseUrl: baseUrl!);
  }

  final String baseUrl;
}

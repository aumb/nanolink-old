import 'package:dio/adapter.dart';
import 'package:dio/adapter_browser.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:nanolink_app/app_config.dart';
import 'package:nanolink_app/resources/dependency_manager/injector.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkModule {
  static Future<void> inject() async {
    final appConfig = injector<AppConfig>();

    injector.registerLazySingleton<Dio>(
      () {
        final dio = Dio()
          ..httpClientAdapter =
              kIsWeb ? BrowserHttpClientAdapter() : DefaultHttpClientAdapter()
          ..options.baseUrl = appConfig.baseUrl
          ..interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
            ),
          );

        return dio;
      },
    );
  }
}

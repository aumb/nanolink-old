import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nanolink_app/app_config.dart';
import 'package:nanolink_app/resources/dependency_manager/injector.dart';
import 'package:nanolink_app/resources/dependency_manager/network_module.dart';

class DependecyManager {
  static Future<void> inject() async {
    await dotenv.load();
    injector
        .registerLazySingleton<AppConfig>(() => AppConfig.fromEnv(dotenv.env));

    await NetworkModule.inject();

    await configureDependencies();
  }
}

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:nanolink_app/resources/dependency_manager/injector.config.dart';

GetIt injector = GetIt.instance;

@InjectableInit()
Future<dynamic> configureDependencies() async => $initGetIt(injector);

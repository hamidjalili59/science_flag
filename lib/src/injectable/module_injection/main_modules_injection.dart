import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:dio/dio.dart';

class MainModulesInjection {
  MainModulesInjection() {
    getIt.registerSingleton<Dio>(Dio());
    
    getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  }

  //
}

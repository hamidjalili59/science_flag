import 'package:api_service/api_service.dart';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/core/interceptors/auth_header_suplier.dart';
import 'package:base_project/src/core/interceptors/request_interceptor.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';

class MainModulesInjection {
  MainModulesInjection() {
    getIt.registerSingleton<Dio>(Dio());

    getIt.registerLazySingleton<ApiService>(
      () => ApiServiceImpl(
        interceptors: [getIt.get<RequestInterceptor>()],
        dio: getIt.get<Dio>(),
      ),
    );
    getIt.registerLazySingleton<DatabaseService>(
      () => DatabaseServiceImpl(),
    );
    getIt.registerLazySingleton<AuthHeaderSupplier>(() => AuthHeaderSupplier());
    getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  }

  //
  Future initDatabase() async =>
      await getIt.get<DatabaseService>().initialize();

  Future registerHiveAdapters() async {
    // ignore: unused_local_variable
    final databaseService = getIt.get<DatabaseService>();

    // await databaseService
    //     .registerAdapter<OtpHandshakeResponse>(OtpHandshakeResponseAdapter());
  }
}

import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/splash/bloc/splash/splash_bloc.dart';

class StaticDependencies {
  static SplashBloc bloc = getIt.get<SplashBloc>();
  static AppRouter autoRoutes = getIt.get<AppRouter>();
}

import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Application extends StatelessWidget {
  Application({super.key});

  final _appRouter = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: GeneralConstants.defaultDesignSize,
        minTextAdapt: true,
        builder: (_, __) {
          return MaterialApp.router(
            themeMode: ThemeMode.dark,
            darkTheme: ThemeData(
              colorScheme: const ColorScheme(
                  brightness: Brightness.light,
                  primary: Color(0xFF000000),
                  onPrimary: Color.fromARGB(255, 0, 0, 0),
                  secondary: Color.fromARGB(255, 38, 39, 39),
                  onSecondary: Color.fromARGB(255, 208, 244, 255),
                  error: Color.fromARGB(255, 247, 74, 74),
                  onError: Color.fromARGB(255, 171, 226, 203),
                  background: Color.fromARGB(255, 255, 255, 255),
                  onBackground: Color(0xff465363),
                  surface: Color.fromARGB(255, 246, 243, 233),
                  onSurface: Color.fromARGB(255, 0, 0, 0)),
              useMaterial3: true,
            ),
            routerConfig: _appRouter.config(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

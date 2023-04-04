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
              // colorSchemeSeed: Colors.blueAccent,
              colorScheme: ColorScheme(
                  brightness: Brightness.light,
                  primary: Color(0xffFFF3D3),
                  onPrimary: Color(0xffFFF3D3),
                  secondary: Color(0xffe4F8F6),
                  onSecondary: Color(0xffFFF3D3),
                  error: Color(0xffFFF3D3),
                  onError: Color(0xffFFF3D3),
                  background: Color(0xff29384d),
                  onBackground: Color(0xff465363),
                  surface: Color(0xffFFF3D3),
                  onSurface: Color(0xffEBF2F8)),
              useMaterial3: true,
            ),
            // theme: ThemeData(
            //   // colorSchemeSeed: Colors.blueAccent,
            //   colorScheme: ColorScheme(
            //       brightness: Brightness.light,
            //       primary: Color(0xffFFF3D3),
            //       onPrimary: Color(0xffFFF3D3),
            //       secondary: Color(0xffFFF3D3),
            //       onSecondary: Color(0xffFFF3D3),
            //       error: Color(0xffFFF3D3),
            //       onError: Color(0xffFFF3D3),
            //       background: Color(0xff29384d),
            //       onBackground: Color(0xffFFF3D3),
            //       surface: Color(0xffFFF3D3),
            //       onSurface: Color(0xffFFF3D3)),
            //   useMaterial3: true,
            // ),
            routerConfig: _appRouter.config(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}

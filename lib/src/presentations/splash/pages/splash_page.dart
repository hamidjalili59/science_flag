import 'package:auto_route/annotations.dart';
import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/constants/png_assets.dart';
import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'splash')
class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final SplashBloc _splashBloc = getIt.get<SplashBloc>();
  final AppRouter _appRoute = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    if (getIt.get<AppRouter>().currentPath == '/') {
      _splashBloc.add(const SplashEvent.jwtIsExist());
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: GeneralConstants.backgroundColor,
        body: BlocProvider<SplashBloc>(
          create: (__) => _splashBloc,
          child: BlocListener<SplashBloc, SplashState>(
            listener: (context, state) {
              state.maybeWhen(
                failure: (f, m) {
                  _appRoute.pushNamed('/intro');
                },
                jwtExist: (r) {
                  _splashBloc.add(const SplashEvent.readingData());
                },
                loadInProgress: () {},
                orElse: () {},
              );
            },
            child: SizedBox(
              width: 1.sw,
              height: 1.sh,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 1.sw,
                    height: 0.7.sh,
                    child: Image(
                      image: AssetImage(PngAssets.astronaut),
                      alignment: Alignment.center,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(36.r),
                    child: SizedBox(
                      width: 0.3.sw,
                      height: 5.h,
                      child: const LinearProgressIndicator(
                        color: Color.fromARGB(255, 61, 142, 248),
                        backgroundColor: Color.fromARGB(255, 69, 77, 85),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

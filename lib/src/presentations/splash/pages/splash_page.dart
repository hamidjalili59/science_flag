import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/config/utils/general_dependencies.dart';
import 'package:base_project/src/presentations/splash/bloc/splash/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'splash')
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return SafeArea(
      child: Scaffold(
        backgroundColor: GeneralConstants.backgroundColor,
        body: BlocProvider<SplashBloc>(
          create: (context) => StaticDependencies.splashbloc,
          child: BlocConsumer<SplashBloc, SplashState>(
            listener: (context, state) {
              state.maybeWhen(
                sucessfull: () async {
                  await Future.delayed(const Duration(seconds: 1));
                  StaticDependencies.autoRoutes.replaceNamed('/login');
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                initial: () {
                  Future.delayed(const Duration(seconds: 1)).then((value) {
                    StaticDependencies.splashbloc
                        .add(const SplashEvent.readingData());
                  });
                  return SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: SplashAnimatedBackgroud(
                      child: Center(
                        child: Text(
                          'Initialize ...',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
                loadInProgress: () {
                  return SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: SplashAnimatedBackgroud(
                      child: Center(
                        child: Text(
                          'Loading ...',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
                sucessfull: () {
                  return SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: SplashAnimatedBackgroud(
                      child: Center(
                        child: Text(
                          'Sucessfull',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
                failed: () {
                  return SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: SplashAnimatedBackgroud(
                      child: Center(
                        child: Text(
                          'failed',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
                orElse: () {
                  return SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: SplashAnimatedBackgroud(
                      child: Center(
                        child: Text(
                          'Loading orElse ...',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class SplashAnimatedBackgroud extends StatefulWidget {
  const SplashAnimatedBackgroud({required this.child, super.key});
  final Widget child;

  @override
  State<SplashAnimatedBackgroud> createState() =>
      _SplashAnimatedBackgroudState();
}

class _SplashAnimatedBackgroudState extends State<SplashAnimatedBackgroud> {
  // with TickerProviderStateMixin {
  //
  // final DecorationTween decorationTween =
  //     DecorationTween(begin: const BoxDecoration(), end: const BoxDecoration());

  //

  // late final AnimationController _controller = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 1),
  //     reverseDuration: const Duration(seconds: 10))
  //   ..repeat(reverse: true);

  //
  @override
  Widget build(BuildContext context) {
    // return DecoratedBoxTransition(
    //   decoration: decorationTween.animate(_controller),
    //   child: widget.child,
    // );
    return widget.child;
  }
}

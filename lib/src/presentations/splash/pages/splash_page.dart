import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: SplashAnimatedBackgroud(
            child: Center(
              child: Text(
                'Loading ...',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.black),
              ),
            ),
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

class _SplashAnimatedBackgroudState extends State<SplashAnimatedBackgroud>
    with TickerProviderStateMixin {
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

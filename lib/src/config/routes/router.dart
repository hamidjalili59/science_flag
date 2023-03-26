import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/presentations/login/pages/login_page.dart';
import 'package:base_project/src/presentations/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

// @MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
//   AutoRoute<SplashPage>(
//     path: "/splash",
//     initial: true,
//     page: SplashPage, //replace your route Widget
// ),
// CustomRoute<Container>(
//   path: "/custom_page",
//   page: Container,//replace your route Widget
//   transitionsBuilder: TransitionsBuilders.fadeIn,
//   durationInMilliseconds: 500,
//   reverseDurationInMilliseconds: 500,
// ),
// ])

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    AutoRoute(
      path: "/",
      page: Splash.page, //replace your route Widget
    ),
    AutoRoute(
      path: "/login",
      page: Login.page, //replace your route Widget
    ),
  ];
}

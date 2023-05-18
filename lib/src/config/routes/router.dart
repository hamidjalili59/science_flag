import 'package:auto_route/auto_route.dart';
import 'package:base_project/src/presentations/auth/pages/auth_page.dart';
import 'package:base_project/src/presentations/editor/pages/editor_page.dart';
import 'package:base_project/src/presentations/home/pages/home_page.dart';
import 'package:base_project/src/presentations/notes/pages/notes_page.dart';
import 'package:base_project/src/presentations/splash/pages/splash_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    AutoRoute(
      path: "/",
      page: Splash.page,
    ),
    AutoRoute(
      path: "/login",
      page: Login.page,
    ),
    AutoRoute(
      path: "/home",
      page: Home.page,
    ),
    AutoRoute(
      path: "/notes",
      page: Notes.page,
    ),
    AutoRoute(
      path: "/editor",
      page: Editor.page,
    ),
  ];
}

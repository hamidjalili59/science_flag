// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Login.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    Editor.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditorPage(),
      );
    },
    Home.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    Intro.name: (routeData) {
      final args = routeData.argsAs<IntroArgs>(orElse: () => const IntroArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: IntroPage(key: args.key),
      );
    },
    Notes.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotesPage(),
      );
    },
    Splash.name: (routeData) {
      final args =
          routeData.argsAs<SplashArgs>(orElse: () => const SplashArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplashPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [AuthPage]
class Login extends PageRouteInfo<void> {
  const Login({List<PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditorPage]
class Editor extends PageRouteInfo<void> {
  const Editor({List<PageRouteInfo>? children})
      : super(
          Editor.name,
          initialChildren: children,
        );

  static const String name = 'Editor';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class Home extends PageRouteInfo<void> {
  const Home({List<PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IntroPage]
class Intro extends PageRouteInfo<IntroArgs> {
  Intro({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          Intro.name,
          args: IntroArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Intro';

  static const PageInfo<IntroArgs> page = PageInfo<IntroArgs>(name);
}

class IntroArgs {
  const IntroArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'IntroArgs{key: $key}';
  }
}

/// generated route for
/// [NotesPage]
class Notes extends PageRouteInfo<void> {
  const Notes({List<PageRouteInfo>? children})
      : super(
          Notes.name,
          initialChildren: children,
        );

  static const String name = 'Notes';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class Splash extends PageRouteInfo<SplashArgs> {
  Splash({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          Splash.name,
          args: SplashArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const PageInfo<SplashArgs> page = PageInfo<SplashArgs>(name);
}

class SplashArgs {
  const SplashArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SplashArgs{key: $key}';
  }
}

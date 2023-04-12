// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    Login.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    Editor.name: (routeData) {
      final args =
          routeData.argsAs<EditorArgs>(orElse: () => const EditorArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditorPage(key: args.key),
      );
    },
    Home.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    Notes.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotesPage(),
      );
    },
    Splash.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
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
class Editor extends PageRouteInfo<EditorArgs> {
  Editor({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          Editor.name,
          args: EditorArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Editor';

  static const PageInfo<EditorArgs> page = PageInfo<EditorArgs>(name);
}

class EditorArgs {
  const EditorArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EditorArgs{key: $key}';
  }
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
class Splash extends PageRouteInfo<void> {
  const Splash({List<PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const PageInfo<void> page = PageInfo<void>(name);
}

import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/auth/bloc/auth/auth_bloc.dart';
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart';
import 'package:base_project/src/presentations/home/bloc/home/home_bloc.dart';
import 'package:base_project/src/presentations/notes/bloc/notes/notes_bloc.dart';
import 'package:base_project/src/presentations/splash/bloc/splash/splash_bloc.dart';

class StaticDependencies {
  static SplashBloc splashbloc = getIt.get<SplashBloc>();
  static AuthBloc authbloc = getIt.get<AuthBloc>();
  static HomeBloc homebloc = getIt.get<HomeBloc>();
  static NotesBloc notesbloc = getIt.get<NotesBloc>();
  static EditorPageBloc editorbloc = getIt.get<EditorPageBloc>();
  static AppRouter autoRoutes = getIt.get<AppRouter>();
}

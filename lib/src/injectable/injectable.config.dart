// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_project/src/core/interceptors/request_interceptor.dart'
    as _i23;
import 'package:base_project/src/features/auth/data/data_sources/local/auth_local_data_source.dart'
    as _i3;
import 'package:base_project/src/features/auth/data/data_sources/remote/auth_remote_data_source.dart'
    as _i4;
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart'
    as _i5;
import 'package:base_project/src/features/auth/domain/use_cases/cache_auth_data_use_case.dart'
    as _i6;
import 'package:base_project/src/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart'
    as _i11;
import 'package:base_project/src/features/auth/domain/use_cases/otp_handshake_use_case.dart'
    as _i20;
import 'package:base_project/src/features/editor/data/data_sources/local/editor_local_data_source.dart'
    as _i8;
import 'package:base_project/src/features/editor/data/data_sources/remote/editor_remote_data_source.dart'
    as _i9;
import 'package:base_project/src/features/editor/domain/repositories/editor_repository.dart'
    as _i10;
import 'package:base_project/src/features/editor/domain/use_cases/read_node_editor_usecase.dart'
    as _i21;
import 'package:base_project/src/features/editor/domain/use_cases/save_note_usecase.dart'
    as _i24;
import 'package:base_project/src/features/notes/data/data_sources/local/notes_local_data_source.dart'
    as _i17;
import 'package:base_project/src/features/notes/data/data_sources/remote/notes_remote_data_source.dart'
    as _i18;
import 'package:base_project/src/features/notes/domain/repositories/notes_repository.dart'
    as _i19;
import 'package:base_project/src/features/notes/domain/use_cases/delete_note_item_use_case.dart'
    as _i7;
import 'package:base_project/src/features/notes/domain/use_cases/get_notes_item.dart'
    as _i12;
import 'package:base_project/src/features/notes/domain/use_cases/read_note_item_use_case.dart'
    as _i22;
import 'package:base_project/src/injectable/module_injection/feature/editor_feature_module.dart'
    as _i28;
import 'package:base_project/src/injectable/module_injection/feature/notes_feature_module.dart'
    as _i29;
import 'package:base_project/src/injectable/module_injection/feature/old_auth_feature_module.dart'
    as _i30;
import 'package:base_project/src/presentations/auth/bloc/auth_bloc.dart'
    as _i26;
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart'
    as _i27;
import 'package:base_project/src/presentations/editor/bloc/math_keyboard/math_keyboard_bloc.dart'
    as _i15;
import 'package:base_project/src/presentations/home/bloc/home/home_bloc.dart'
    as _i13;
import 'package:base_project/src/presentations/intro/bloc/intro_bloc.dart'
    as _i14;
import 'package:base_project/src/presentations/notes/bloc/notes/notes_bloc.dart'
    as _i16;
import 'package:base_project/src/presentations/splash/bloc/splash_bloc.dart'
    as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final authFeatureModule = _$AuthFeatureModule();
    final notesFeatureModule = _$NotesFeatureModule();
    final editorFeatureModule = _$EditorFeatureModule();
    gh.factory<_i3.AuthLocalDataSource>(() => authFeatureModule.localDS);
    gh.factory<_i4.AuthRemoteDataSource>(() => authFeatureModule.remoteDS);
    gh.factory<_i5.AuthRepository>(() => authFeatureModule.repo);
    gh.factory<_i6.CacheAuthDataUseCase>(
        () => authFeatureModule.cacheAuthDataUseCase);
    gh.factory<_i7.DeleteNoteItemUseCase>(
        () => notesFeatureModule.deleteNoteItemUseCase);
    gh.factory<_i8.EditorLocalDataSource>(() => editorFeatureModule.localDS);
    gh.factory<_i9.EditorRemoteDataSource>(() => editorFeatureModule.remoteDS);
    gh.factory<_i10.EditorRepository>(() => editorFeatureModule.repo);
    gh.factory<_i11.GetCachedAuthDataUseCase>(
        () => authFeatureModule.getCacheDataUseCase);
    gh.factory<_i12.GetNotesDataUseCase>(
        () => notesFeatureModule.getNotesUseCase);
    gh.factory<_i13.HomeBloc>(() => _i13.HomeBloc());
    gh.factory<_i14.IntroBloc>(() => _i14.IntroBloc());
    gh.lazySingleton<_i15.MathKeyboardBloc>(() => _i15.MathKeyboardBloc());
    gh.factory<_i16.NotesBloc>(
        () => _i16.NotesBloc(gh<_i12.GetNotesDataUseCase>()));
    gh.factory<_i17.NotesLocalDataSource>(() => notesFeatureModule.localDS);
    gh.factory<_i18.NotesRemoteDataSource>(() => notesFeatureModule.remoteDS);
    gh.factory<_i19.NotesRepository>(() => notesFeatureModule.repo);
    gh.factory<_i20.OtpHandshakeUseCase>(
        () => authFeatureModule.otpHandshakeUseCase);
    gh.factory<_i21.ReadNoteEditorUseCase>(
        () => editorFeatureModule.readNotesUseCase);
    gh.factory<_i22.ReadNoteItemUseCase>(
        () => notesFeatureModule.readNoteItemUseCase);
    gh.factory<_i23.RequestInterceptor>(() => _i23.RequestInterceptor());
    gh.factory<_i24.SaveNoteUseCase>(() => editorFeatureModule.getNotesUseCase);
    gh.factory<_i25.SplashBloc>(
        () => _i25.SplashBloc(gh<_i11.GetCachedAuthDataUseCase>()));
    gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(
          gh<_i20.OtpHandshakeUseCase>(),
          gh<_i6.CacheAuthDataUseCase>(),
        ));
    gh.lazySingleton<_i27.EditorPageBloc>(() => _i27.EditorPageBloc(
          gh<_i21.ReadNoteEditorUseCase>(),
          gh<_i24.SaveNoteUseCase>(),
        ));
    return this;
  }
}

class _$EditorFeatureModule extends _i28.EditorFeatureModule {}

class _$NotesFeatureModule extends _i29.NotesFeatureModule {}

class _$AuthFeatureModule extends _i30.AuthFeatureModule {}

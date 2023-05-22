// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_project/src/core/interceptors/request_interceptor.dart'
    as _i20;
import 'package:base_project/src/features/auth/data/data_sources/local/auth_local_data_source.dart'
    as _i3;
import 'package:base_project/src/features/auth/data/data_sources/remote/auth_remote_data_source.dart'
    as _i4;
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart'
    as _i5;
import 'package:base_project/src/features/auth/domain/use_cases/cache_auth_data_use_case.dart'
    as _i6;
import 'package:base_project/src/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart'
    as _i8;
import 'package:base_project/src/features/auth/domain/use_cases/otp_login_use_case.dart'
    as _i17;
import 'package:base_project/src/features/auth/domain/use_cases/otp_signup_use_case.dart'
    as _i18;
import 'package:base_project/src/features/editor/data/data_sources/local/notes_local_data_source.dart'
    as _i13;
import 'package:base_project/src/features/editor/data/data_sources/remote/notes_remote_data_source.dart'
    as _i15;
import 'package:base_project/src/features/editor/domain/repositories/notes_repository.dart'
    as _i7;
import 'package:base_project/src/features/editor/domain/use_cases/read_node_editor_usecase.dart'
    as _i19;
import 'package:base_project/src/features/editor/domain/use_cases/save_note_usecase.dart'
    as _i21;
import 'package:base_project/src/features/notes/data/data_sources/local/notes_local_data_source.dart'
    as _i12;
import 'package:base_project/src/features/notes/data/data_sources/remote/notes_remote_data_source.dart'
    as _i14;
import 'package:base_project/src/features/notes/domain/repositories/notes_repository.dart'
    as _i16;
import 'package:base_project/src/features/notes/domain/use_cases/get_notes_item.dart'
    as _i9;
import 'package:base_project/src/injectable/module_injection/feature/auth_feature_module.dart'
    as _i25;
import 'package:base_project/src/injectable/module_injection/feature/editor_feature_module.dart'
    as _i27;
import 'package:base_project/src/injectable/module_injection/feature/notes_feature_module.dart'
    as _i26;
import 'package:base_project/src/presentations/auth/bloc/auth/auth_bloc.dart'
    as _i23;
import 'package:base_project/src/presentations/editor/bloc/editor/editor_bloc.dart'
    as _i24;
import 'package:base_project/src/presentations/home/bloc/home/home_bloc.dart'
    as _i10;
import 'package:base_project/src/presentations/notes/bloc/notes/notes_bloc.dart'
    as _i11;
import 'package:base_project/src/presentations/splash/bloc/splash/splash_bloc.dart'
    as _i22;
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
    final editorFeatureModule = _$EditorFeatureModule();
    final notesFeatureModule = _$NotesFeatureModule();
    gh.factory<_i3.AuthLocalDataSource>(() => authFeatureModule.localDS);
    gh.factory<_i4.AuthRemoteDataSource>(() => authFeatureModule.remoteDS);
    gh.factory<_i5.AuthRepository>(() => authFeatureModule.repo);
    gh.factory<_i6.CacheAuthDataUseCase>(
        () => authFeatureModule.cacheAuthDataUseCase);
    gh.factory<_i7.EditorRepository>(() => editorFeatureModule.repo);
    gh.factory<_i8.GetCachedAuthDataUseCase>(
        () => authFeatureModule.getCacheDataUseCase);
    gh.factory<_i9.GetNotesDataUseCase>(
        () => notesFeatureModule.getNotesUseCase);
    gh.factory<_i10.HomeBloc>(() => _i10.HomeBloc());
    gh.factory<_i11.NotesBloc>(
        () => _i11.NotesBloc(gh<_i9.GetNotesDataUseCase>()));
    gh.factory<_i12.NotesLocalDataSource>(() => notesFeatureModule.localDS);
    gh.factory<_i13.NotesLocalDataSource>(() => editorFeatureModule.localDS);
    gh.factory<_i14.NotesRemoteDataSource>(() => notesFeatureModule.remoteDS);
    gh.factory<_i15.NotesRemoteDataSource>(() => editorFeatureModule.remoteDS);
    gh.factory<_i16.NotesRepository>(() => notesFeatureModule.repo);
    gh.factory<_i17.OtpLoginUseCase>(() => authFeatureModule.otpLoginUseCase);
    gh.factory<_i18.OtpSignupUseCase>(() => authFeatureModule.otpSignupUseCase);
    gh.factory<_i19.ReadNoteEditorUseCase>(
        () => editorFeatureModule.readNotesUseCase);
    gh.factory<_i20.RequestInterceptor>(() => _i20.RequestInterceptor());
    gh.factory<_i21.SaveNoteUseCase>(() => editorFeatureModule.getNotesUseCase);
    gh.singleton<_i22.SplashBloc>(_i22.SplashBloc());
    gh.factory<_i23.AuthBloc>(() => _i23.AuthBloc(gh<_i17.OtpLoginUseCase>()));
    gh.lazySingleton<_i24.EditorPageBloc>(() => _i24.EditorPageBloc(
          gh<_i19.ReadNoteEditorUseCase>(),
          gh<_i21.SaveNoteUseCase>(),
        ));
    return this;
  }
}

class _$AuthFeatureModule extends _i25.AuthFeatureModule {}

class _$NotesFeatureModule extends _i26.NotesFeatureModule {}

class _$EditorFeatureModule extends _i27.EditorFeatureModule {}

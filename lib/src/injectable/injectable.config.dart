// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base_project/src/core/interceptors/request_interceptor.dart'
    as _i11;
import 'package:base_project/src/features/auth/data/data_sources/local/auth_local_data_source.dart'
    as _i3;
import 'package:base_project/src/features/auth/data/data_sources/remote/auth_remote_data_source.dart'
    as _i4;
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart'
    as _i5;
import 'package:base_project/src/features/auth/domain/use_cases/cache_auth_data_use_case.dart'
    as _i6;
import 'package:base_project/src/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart'
    as _i7;
import 'package:base_project/src/features/auth/domain/use_cases/logout_use_case.dart'
    as _i8;
import 'package:base_project/src/features/auth/domain/use_cases/otp_login_use_case.dart'
    as _i9;
import 'package:base_project/src/features/auth/domain/use_cases/otp_signup_use_case.dart'
    as _i10;
import 'package:base_project/src/injectable/module_injection/feature/auth_feature_module.dart'
    as _i14;
import 'package:base_project/src/presentations/auth/bloc/auth/auth_bloc.dart'
    as _i13;
import 'package:base_project/src/presentations/splash/bloc/splash/splash_bloc.dart'
    as _i12;
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
    gh.factory<_i3.AuthLocalDataSource>(() => authFeatureModule.localDS);
    gh.factory<_i4.AuthRemoteDataSource>(() => authFeatureModule.remoteDS);
    gh.factory<_i5.AuthRepository>(() => authFeatureModule.repo);
    gh.factory<_i6.CacheAuthDataUseCase>(
        () => authFeatureModule.cacheAuthDataUseCase);
    gh.factory<_i7.GetCachedAuthDataUseCase>(
        () => authFeatureModule.getCacheDataUseCase);
    gh.factory<_i8.LogoutUseCase>(() => authFeatureModule.logoutUseCase);
    gh.factory<_i9.OtpLoginUseCase>(() => authFeatureModule.otpLoginUseCase);
    gh.factory<_i10.OtpSignupUseCase>(() => authFeatureModule.otpSignupUseCase);
    gh.factory<_i11.RequestInterceptor>(() => _i11.RequestInterceptor());
    gh.factory<_i12.SplashBloc>(() => _i12.SplashBloc());
    gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(gh<_i9.OtpLoginUseCase>()));
    return this;
  }
}

class _$AuthFeatureModule extends _i14.AuthFeatureModule {}

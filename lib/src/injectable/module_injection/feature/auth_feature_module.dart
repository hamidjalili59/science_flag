// import 'package:api_service/api_service.dart';
// import 'package:base_project/src/features/auth/data/data_sources/local/auth_local_data_source.dart';
// import 'package:base_project/src/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
// import 'package:base_project/src/features/auth/data/repositories/auth_repository_impl.dart';
// import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart';
// import 'package:base_project/src/features/auth/domain/use_cases/cache_auth_data_use_case.dart';
// import 'package:base_project/src/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart';
// import 'package:base_project/src/features/auth/domain/use_cases/otp_login_use_case.dart';
// import 'package:base_project/src/features/auth/domain/use_cases/otp_signup_use_case.dart';
// import 'package:base_project/src/injectable/injectable.dart';
// import 'package:database_service/database_service.dart';
// import 'package:injectable/injectable.dart';

// @module
// abstract class AuthFeatureModule {
//   AuthRemoteDataSource get remoteDS => AuthRemoteDataSourceImpl(
//         getIt.get<ApiService>(),
//       );
//   AuthLocalDataSource get localDS => AuthLocalDataSource(
//         getIt.get<DatabaseService>(),
//       );

//   AuthRepository get repo => AuthRepositoryImpl(remoteDS, localDS);

//   OtpLoginUseCase get otpLoginUseCase => OtpLoginUseCase(repo);
//   // LogoutUseCase get logoutUseCase => LogoutUseCase(repo);
//   OtpSignupUseCase get otpSignupUseCase => OtpSignupUseCase(repo);
//   CacheAuthDataUseCase get cacheAuthDataUseCase => CacheAuthDataUseCase(repo);
//   GetCachedAuthDataUseCase get getCacheDataUseCase =>
//       GetCachedAuthDataUseCase(repo);
// }

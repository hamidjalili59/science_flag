// import 'package:injectable/injectable.dart';


// @module
// abstract class AuthFeatureModule {
//   AuthRemoteDataSource get remoteDS => AuthRemoteDataSourceImpl(
//         getIt.get<ApiService>(),
//       );
//   AuthLocalDataSource get localDS => AuthLocalDataSource(
//         getIt.get<DatabaseService>(),
//       );

//       AuthRepository get repo => AuthRepositoryImpl(remoteDS, localDS);

//       OtpHandshakeUseCase get otpAuthorizaUseCase => OtpHandshakeUseCase(repo);
//       // OtpVerifyUseCase get otpVerifyUseCase => OtpVerifyUseCase(repo);
//       CacheAuthDataUseCase get cacheAuthDataUseCase => CacheAuthDataUseCase(repo);
//       GetCachedAuthDataUseCase get getCacheDataUseCase => GetCachedAuthDataUseCase(repo);
// }

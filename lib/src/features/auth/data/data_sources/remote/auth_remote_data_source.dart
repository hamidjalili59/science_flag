import 'package:api_service/api_service.dart';
import 'package:base_project/src/features/auth/data/data_sources/remote/auth_end_points.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AuthRemoteDataSource {
  Future<Either<DioError, Response<String>>> otpLogin({
    required String email,
    required String password,
  });
  Future<Either<DioError, Response<String>>> otpSignup({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<String>>> otpLogin({
    required String email,
    required String password,
  }) async {
    return await apiService.postMethod<String>(
      AuthEndpoints.host + AuthEndpoints.login,
      body: {"email": email, "password": password},
    );
  }

  @override
  Future<Either<DioError, Response<String>>> otpSignup({
    required String email,
    required String password,
  }) =>
      apiService.postMethod<String>(
        AuthEndpoints.host + AuthEndpoints.signup,
        body: {"email": email, "password": password},
      );
}

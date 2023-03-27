import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/models/otp_login_response.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  //
  Future<Either<AuthFailure, OtpLoginResponse>> otpLogin({
    required String email,
    required String password,
  });
  //
  Future<Either<AuthFailure, OtpLoginResponse>> otpSignup({
    required String email,
    required String password,
  });

  //
  Future<Either<AuthFailure, void>> cacheAuthData({
    required String email,
    required String token,
    required String password,
  });
  //
  Future<Either<AuthFailure, void>> logout();
  //
  Future<Either<AuthFailure, OtpLoginResponse?>> getCachedAuthData();
  //
}

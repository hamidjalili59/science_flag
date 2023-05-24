import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:base_project/src/features/auth/domain/models/otp_login_response.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  //
  Future<Either<AuthFailure, OtpLoginResponse>> otpHandshake(
      {required double phoneNumber});
  //
  // Future<Either<AuthFailure, OtpVerifyResponse>> otpVerify({
  //   required OtpVerifyParams verifyParams,
  //   required String code,
  // });
  //
  Future<Either<AuthFailure, void>> cacheAuthData({
    required double phoneNumber,
    required String jwt,
  });
  //
  Future<Either<AuthFailure, OtpVerifyResponse?>> getCachedAuthData();
  //
}

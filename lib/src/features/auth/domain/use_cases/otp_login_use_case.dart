import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/models/otp_login_response.dart';
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:base_project/src/features/core/models/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;

class OtpLoginUseCase
    implements
        UseCase<AuthFailure, OtpLoginResponse, tuple.Tuple2<String, String>> {
  const OtpLoginUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, OtpLoginResponse>> call(
      {tuple.Tuple2<String, String>? param}) {
    return (param == null)
        ? Future.value(left(const AuthFailure.nullParam()))
        : repo.otpLogin(
            email: param.value1,
            password: param.value2,
          );
  }
}

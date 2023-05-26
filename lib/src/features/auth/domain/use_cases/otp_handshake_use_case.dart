import 'package:base_project/src/features/core/models/use_case.dart';
import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:base_project/src/features/auth/domain/models/otp_login_response.dart';
import 'package:dartz/dartz.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;

class OtpHandshakeUseCase
    implements UseCase<AuthFailure, OtpLoginResponse, tuple.Tuple1<double>> {
  const OtpHandshakeUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, OtpLoginResponse>> call(
          {tuple.Tuple1<double>? param}) =>
      (param == null)
          ? Future.value(left(const AuthFailure.nullParam()))
          : repo.otpHandshake(phoneNumber: param.value1);
}

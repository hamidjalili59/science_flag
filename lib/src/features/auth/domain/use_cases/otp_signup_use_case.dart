import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:base_project/src/features/core/models/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;

class OtpSignupUseCase
    implements UseCase<AuthFailure, void, tuple.Tuple2<String, String>> {
  const OtpSignupUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, void>> call(
          {tuple.Tuple2<String, String>? param}) =>
      (param == null)
          ? Future.value(left(const AuthFailure.nullParam()))
          : repo.otpSignup(
              email: param.value1,
              password: param.value2,
            );
}

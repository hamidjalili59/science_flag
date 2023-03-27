import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:base_project/src/features/core/models/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;

class CacheAuthDataUseCase
    implements
        UseCase<AuthFailure, void, tuple.Tuple3<String, String, String>> {
  const CacheAuthDataUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, void>> call(
          {tuple.Tuple3<String, String, String>? param}) =>
      (param == null)
          ? Future.value(left(const AuthFailure.nullParam()))
          : repo.cacheAuthData(
              token: param.value1,
              email: param.value2,
              password: param.value3,
            );
}

import 'package:base_project/src/features/auth/domain/failures/auth_failure.dart';
import 'package:base_project/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:base_project/src/features/core/models/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;

class GetCachedAuthDataUseCase
    implements UseCase<AuthFailure, void, tuple.Tuple0> {
  const GetCachedAuthDataUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, void>> call({tuple.Tuple0? param}) =>
      (param == null)
          ? Future.value(left(const AuthFailure.nullParam()))
          : repo.getCachedAuthData();
}

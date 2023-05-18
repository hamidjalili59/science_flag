import 'package:base_project/src/features/core/models/tuple.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<F, S, Params extends Tuple> {
  Future<Either<F, S>> call({Params? param});
}

import 'package:base_project/src/features/core/models/use_case.dart';
import 'package:base_project/src/features/editor/domain/failures/editor_failure.dart';
import 'package:base_project/src/features/editor/domain/repositories/editor_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;

class ReadNoteEditorUseCase
    implements UseCase<EditorFailure, String, tuple.Tuple1<String>> {
  const ReadNoteEditorUseCase(this.repo);

  final EditorRepository repo;

  @override
  Future<Either<EditorFailure, String>> call({tuple.Tuple1<String>? param}) =>
      (param == null)
          ? Future.value(left(const EditorFailure.nullParam()))
          : repo.readNote(
              fileName: param.value1,
            );
}

import 'package:base_project/src/features/core/models/use_case.dart';
import 'package:base_project/src/features/editor/domain/failures/editor_failure.dart';
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/repositories/notes_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;

class SaveNoteUseCase
    implements
        UseCase<EditorFailure, void, tuple.Tuple2<EditorItemList, String>> {
  const SaveNoteUseCase(this.repo);

  final EditorRepository repo;

  @override
  Future<Either<EditorFailure, void>> call(
          {tuple.Tuple2<EditorItemList, String>? param}) =>
      (param == null)
          ? Future.value(left(const EditorFailure.nullParam()))
          : repo.saveNote(
              editorItemList: param.value1,
              fileName: param.value2,
            );
}

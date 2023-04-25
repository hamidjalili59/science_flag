import 'package:base_project/src/features/editor/domain/failures/editor_failure.dart';
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:dartz/dartz.dart';

abstract class EditorRepository {
  //
  Future<Either<EditorFailure, void>> saveNote({
    required EditorItemList editorItemList,
    required String? fileName,
  });
  Future<Either<EditorFailure, void>> deleteNote({
    required EditorItemList editorItemList,
    required String? fileName,
  });
  Future<Either<EditorFailure, void>> renameNote({
    required String? fileName,
  });
}

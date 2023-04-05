import 'package:base_project/src/features/notes/domain/failures/notes_failure.dart';
import 'package:base_project/src/features/notes/domain/models/notes_item_list_model.dart';
import 'package:dartz/dartz.dart';

abstract class NotesRepository {
  //
  Future<Either<NotesFailure, List<NotesItemListModel>>> getNotesItem();
  Future<Either<NotesFailure, List<NotesItemListModel>>> getCachedNotesItem({
    required List<NotesItemListModel> notesList,
  });
  Future<Either<NotesFailure, List<NotesItemListModel>>> cacheNotesItem({
    required List<NotesItemListModel> notesList,
  });
}

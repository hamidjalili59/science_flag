import 'package:base_project/src/features/core/models/use_case.dart';
import 'package:base_project/src/features/notes/domain/failures/notes_failure.dart';
import 'package:base_project/src/features/notes/domain/models/notes_item_list_model.dart';
import 'package:base_project/src/features/notes/domain/repositories/notes_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:base_project/src/features/core/models/tuple.dart' as tuple;

class ReadNoteItemUseCase
    implements UseCase<NotesFailure, void, tuple.Tuple1<NotesItemListModel>> {
  const ReadNoteItemUseCase(this.repo);

  final NotesRepository repo;

  @override
  Future<Either<NotesFailure, void>> call(
          {tuple.Tuple1<NotesItemListModel>? param}) =>
      (param == null)
          ? Future.value(left(const NotesFailure.nullParam()))
          : repo.readNoteItem(note: param.value1);
}

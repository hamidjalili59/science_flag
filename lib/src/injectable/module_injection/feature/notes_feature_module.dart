import 'package:api_service/api_service.dart';
import 'package:base_project/src/features/notes/data/data_sources/local/notes_local_data_source.dart';
import 'package:base_project/src/features/notes/data/data_sources/remote/notes_remote_data_source.dart';
import 'package:base_project/src/features/notes/data/repositories/notes_repository_impl.dart';
import 'package:base_project/src/features/notes/domain/repositories/notes_repository.dart';
import 'package:base_project/src/features/notes/domain/use_cases/delete_note_item_use_case.dart';
import 'package:base_project/src/features/notes/domain/use_cases/get_notes_item.dart';
import 'package:base_project/src/features/notes/domain/use_cases/read_note_item_use_case.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NotesFeatureModule {
  NotesRemoteDataSource get remoteDS => NotesRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  NotesLocalDataSource get localDS => NotesLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  NotesRepository get repo => NotesRepositoryImpl(remoteDS, localDS);

  GetNotesDataUseCase get getNotesUseCase => GetNotesDataUseCase(repo);
  DeleteNoteItemUseCase get deleteNoteItemUseCase =>
      DeleteNoteItemUseCase(repo);
  ReadNoteItemUseCase get readNoteItemUseCase => ReadNoteItemUseCase(repo);
}

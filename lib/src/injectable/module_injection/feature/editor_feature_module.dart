import 'package:api_service/api_service.dart';
import 'package:base_project/src/features/editor/data/data_sources/local/editor_local_data_source.dart';
import 'package:base_project/src/features/editor/data/data_sources/remote/editor_remote_data_source.dart';
import 'package:base_project/src/features/editor/data/repositories/editor_repository_impl.dart';
import 'package:base_project/src/features/editor/domain/repositories/editor_repository.dart';
import 'package:base_project/src/features/editor/domain/use_cases/read_node_editor_usecase.dart';
import 'package:base_project/src/features/editor/domain/use_cases/save_note_usecase.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class EditorFeatureModule {
  EditorRemoteDataSource get remoteDS => NotesRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  EditorLocalDataSource get localDS => EditorLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  EditorRepository get repo => EditorRepositoryImpl(remoteDS, localDS);

  SaveNoteUseCase get getNotesUseCase => SaveNoteUseCase(repo);
  ReadNoteEditorUseCase get readNotesUseCase => ReadNoteEditorUseCase(repo);
}

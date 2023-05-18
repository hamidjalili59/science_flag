import 'package:base_project/src/features/notes/domain/models/notes_item_list_model.dart';
import 'package:database_service/database_service.dart';

class NotesLocalDataSource
    extends DatabaseCommonOperations<List<NotesItemListModel>> {
  final DatabaseService dbService;

  NotesLocalDataSource(this.dbService)
      : super(
          boxName: 'NotesDataSource',
          databaseService: dbService,
        );
}

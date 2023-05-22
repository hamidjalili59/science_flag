import 'package:database_service/database_service.dart';

class NotesLocalDataSource extends DatabaseCommonOperations<String> {
  final DatabaseService dbService;

  NotesLocalDataSource(this.dbService)
      : super(
          boxName: 'NotesDataSource',
          databaseService: dbService,
        );
}

import 'package:database_service/database_service.dart';

class EditorLocalDataSource extends DatabaseCommonOperations<String> {
  final DatabaseService dbService;

  EditorLocalDataSource(this.dbService)
      : super(
          boxName: 'EditorDataSource',
          databaseService: dbService,
        );
}

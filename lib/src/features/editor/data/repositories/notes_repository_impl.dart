import 'dart:convert';

import 'package:base_project/src/features/editor/data/data_sources/local/notes_local_data_source.dart';
import 'package:base_project/src/features/editor/data/data_sources/remote/notes_remote_data_source.dart';
import 'package:base_project/src/features/editor/domain/failures/editor_failure.dart';
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/repositories/notes_repository.dart';
import 'package:dartz/dartz.dart';

class NotesRepositoryImpl extends EditorRepository {
  final NotesRemoteDataSource _remoteDS;
  final NotesLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  NotesRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<EditorFailure, void>> deleteNote(
      {required EditorItemList editorItemList, required String? fileName}) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<Either<EditorFailure, void>> renameNote({required String? fileName}) {
    // TODO: implement renameNote
    throw UnimplementedError();
  }

  @override
  Future<Either<EditorFailure, void>> saveNote(
      {required String data, required String? fileName}) {
    return _localDS.cacheData(fieldKey: fileName!, value: data).then((value) =>
        value.fold((l) => left(EditorFailure.database(l)), (r) => right(null)));
  }

  @override
  Future<Either<EditorFailure, String>> readNote({required String? fileName}) {
    return _localDS.getCachedData(fieldKey: fileName!).then((value) =>
        value.fold((l) => left(EditorFailure.database(l)), (r) => right(r!)));
  }
}

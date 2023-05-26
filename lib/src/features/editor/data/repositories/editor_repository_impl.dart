import 'package:base_project/src/features/editor/data/data_sources/local/editor_local_data_source.dart';
import 'package:base_project/src/features/editor/data/data_sources/remote/editor_remote_data_source.dart';
import 'package:base_project/src/features/editor/domain/failures/editor_failure.dart';
import 'package:base_project/src/features/editor/domain/models/editor_item_list.dart';
import 'package:base_project/src/features/editor/domain/repositories/editor_repository.dart';
import 'package:dartz/dartz.dart';

class EditorRepositoryImpl extends EditorRepository {
  final EditorRemoteDataSource _remoteDS;
  final EditorLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  EditorRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<EditorFailure, void>> deleteNote(
      {required EditorItemList editorItemList, required String? fileName}) {
    _remoteDS;
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

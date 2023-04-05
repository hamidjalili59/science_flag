import 'dart:convert';

import 'package:base_project/src/features/notes/data/data_sources/local/notes_local_data_source.dart';
import 'package:base_project/src/features/notes/data/data_sources/remote/notes_remote_data_source.dart';
import 'package:base_project/src/features/notes/domain/models/notes_item_list_model.dart';
import 'package:base_project/src/features/notes/domain/failures/notes_failure.dart';
import 'package:base_project/src/features/notes/domain/repositories/notes_repository.dart';
import 'package:dartz/dartz.dart';

class NotesRepositoryImpl extends NotesRepository {
  final NotesRemoteDataSource _remoteDS;
  final NotesLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  NotesRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<NotesFailure, List<NotesItemListModel>>> cacheNotesItem(
      {required List<NotesItemListModel> notesList}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<NotesFailure, List<NotesItemListModel>>> getCachedNotesItem(
      {required List<NotesItemListModel> notesList}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<NotesFailure, List<NotesItemListModel>>> getNotesItem() async =>
      await _remoteDS.getNotesItem().then(
            (value) => value.fold(
              (l) => left<NotesFailure, List<NotesItemListModel>>(
                  NotesFailure.api(l)),
              (r) {
                if (r.statusCode != 200) {
                  return left<NotesFailure, List<NotesItemListModel>>(
                      const NotesFailure.missingToken());
                }
                return right(
                  List<NotesItemListModel>.from(
                    (jsonDecode(r.data ?? '{}') as List<dynamic>)
                        .map(
                            (dynamic note) => NotesItemListModel.fromJson(note))
                        .toList(),
                  ),
                );
              },
            ),
          );
}

import 'dart:convert';

import 'package:base_project/src/features/notes/data/data_sources/local/notes_local_data_source.dart';
import 'package:base_project/src/features/notes/data/data_sources/remote/notes_remote_data_source.dart';
import 'package:base_project/src/features/notes/domain/models/notes_item_list_model.dart';
import 'package:base_project/src/features/notes/domain/failures/notes_failure.dart';
import 'package:base_project/src/features/notes/domain/repositories/notes_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NotesRepositoryImpl extends NotesRepository {
  final NotesRemoteDataSource _remoteDS;
  final NotesLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  NotesRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<NotesFailure, void>> cacheNotesItem(
      {required List<NotesItemListModel> notesList}) {
    return _localDS.cacheData(fieldKey: 'notes', value: notesList).then(
          (value) => value.fold(
            (l) => left(NotesFailure.database(l)),
            (r) => right(null),
          ),
        );
  }

  @override
  Future<Either<NotesFailure, List<NotesItemListModel>>> getCachedNotesItem(
      {required List<NotesItemListModel> notesList}) {
    return _localDS.getCachedData(fieldKey: 'notes').then(
          (value) => value.fold(
            (l) => left(NotesFailure.database(l)),
            (r) {
              if (r == null) {
                return left(const NotesFailure.nullParam());
              }
              return right(r);
            },
          ),
        );
  }

  @override
  Future<Either<NotesFailure, List<NotesItemListModel>>> getNotesItem() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      return await _remoteDS.getNotesItem().then(
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
    } else {
      return _localDS.getCachedData(fieldKey: 'notes').then(
            (value) => value.fold(
              (l) => left(NotesFailure.database(l)),
              (r) {
                if (r == null) {
                  return left(const NotesFailure.nullParam());
                }
                return right(r);
              },
            ),
          );
    }
  }

  @override
  Future<Either<NotesFailure, void>> deleteNoteItem(
      {required NotesItemListModel note}) {
    return _localDS.removeData(fieldKey: note.name).then(
          (value) => value.fold(
            (l) => left(NotesFailure.database(l)),
            (r) => right(null),
          ),
        );
  }

  @override
  Future<Either<NotesFailure, NotesItemListModel>> editNoteItem(
      {required NotesItemListModel note}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<NotesFailure, NotesItemListModel>> readNoteItem(
      {required NotesItemListModel note}) {
    return _localDS.getCachedData(fieldKey: note.name).then(
          (value) => value.fold(
            (l) => left(NotesFailure.database(l)),
            (r) {
              if (r == null) {
                return left(const NotesFailure.nullParam());
              }
              var tempNotes = r
                  .toList()
                  .where((element) => element.name == note.name)
                  .first;
              return right(tempNotes);
            },
          ),
        );
  }
}

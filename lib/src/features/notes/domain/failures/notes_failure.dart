import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/src/features/core/failures/failure.dart';

part 'notes_failure.freezed.dart';

@freezed
class NotesFailure extends Failure with _$NotesFailure {
  ///
  const factory NotesFailure.cancelledByUser() = _CancelledByUser;
  const factory NotesFailure.missingToken() = _MissingToken;

  ///
  const factory NotesFailure.api(DioError failure) = _Api;
  const factory NotesFailure.nullParam() = _NullParam;
  const factory NotesFailure.database(DatabaseError failure) = _Database;
}

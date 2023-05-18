import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:base_project/src/features/core/failures/failure.dart';

part 'editor_failure.freezed.dart';

@freezed
class EditorFailure extends Failure with _$EditorFailure {
  ///
  const factory EditorFailure.cancelledByUser() = _CancelledByUser;
  const factory EditorFailure.missingToken() = _MissingToken;

  ///
  const factory EditorFailure.api(DioError failure) = _Api;
  const factory EditorFailure.nullParam() = _NullParam;
  const factory EditorFailure.database(DatabaseError failure) = _Database;
}

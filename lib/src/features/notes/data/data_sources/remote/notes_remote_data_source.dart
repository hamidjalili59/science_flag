import 'package:api_service/api_service.dart';
import 'package:base_project/src/features/notes/data/data_sources/remote/notes_end_points.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class NotesRemoteDataSource {
  Future<Either<DioError, Response<String>>> getNotesItem();
}

class NotesRemoteDataSourceImpl implements NotesRemoteDataSource {
  NotesRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<String>>> getNotesItem() async {
    return await apiService.getMethod<String>(
      NotesEndpoints.host + NotesEndpoints.getNotes,
    );
  }
}

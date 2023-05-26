import 'package:api_service/api_service.dart';
import 'package:base_project/src/features/editor/data/data_sources/remote/editor_end_points.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class EditorRemoteDataSource {
  Future<Either<DioError, Response<String>>> getNotesItem();
}

class EditorRemoteDataSourceImpl implements EditorRemoteDataSource {
  EditorRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<String>>> getNotesItem() async {
    return await apiService.getMethod<String>(
      EditorEndpoints.host + EditorEndpoints.notes,
    );
  }
}

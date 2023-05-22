import 'package:base_project/src/config/utils/function_helper.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class RequestInterceptor extends Interceptor {
  RequestInterceptor();

  FunctionHelper appHelper = FunctionHelper();

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    appHelper.logMessage(
      'REQUEST[${options.method}] => PATH: ${options.path}',
    );
    options.baseUrl = '';
    String token = '';
    if (token.isNotEmpty) {
      options.headers = {
        'Authorization': 'Bearer $token',
      };
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    appHelper.logMessage(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
    );
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    appHelper.logMessage(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    var requestOptions = err.requestOptions;
    var retries = requestOptions.extra["retries"] ?? 0;
    if (retries < 3) {
      requestOptions.extra["retries"] = retries + 1;
      await Future.delayed(const Duration(seconds: 1));
      getIt.get<Dio>().request(requestOptions.path,
          data: requestOptions.data,
          options: Options(
              method: err.requestOptions.method,
              contentType: err.requestOptions.contentType,
              receiveTimeout: const Duration(seconds: 1),
              headers: err.requestOptions.headers,
              extra: err.requestOptions.extra));
    }

    if (err.response?.statusCode == 401 && err.requestOptions.path != '') {
      // refresh token
      return;
    } else if (err.message!.contains('XMLHttpRequest')) {
      // reject the request
      return;
    }
    super.onError(err, handler);
  }

  // Future<Either<DioError, Response<Map<String, dynamic>>>>
  //     _callRefreshTokenApi() async =>
  // await getIt.get<ApiService>().postMethod<Map<String, dynamic>>(
  // const AuthEndpoints.refreshToken().toPath,
  // option: const ApiServiceOption(),
  // );

  // Future<void> _updateToken(String refreshedToken) async {
  //   if (kIsWeb) {}
  // }

  // Future<void> _retryLastRequest(
  //   RequestOptions requestOptions,
  //   ErrorInterceptorHandler handler,
  //   String refreshedToken,
  // ) async {
  //   Map<String, dynamic> newHeader = requestOptions.headers;
  //   newHeader['accept'] = "application/json";
  //   newHeader['iam'] = "mobile";
  //   newHeader['cookie'] = GeneralConstants.jwt;
  //   await getIt
  //       .get<Dio>()
  //       .request(
  //         '',
  //         data: requestOptions.data,
  //         onReceiveProgress: requestOptions.onReceiveProgress,
  //         queryParameters: requestOptions.queryParameters,
  //         options: Options(
  //           headers: newHeader,
  //           method: requestOptions.method,
  //           contentType: requestOptions.contentType,
  //           extra: requestOptions.extra,
  //         ),
  //       )
  //       .then((res) => handler.resolve(res))
  //       .catchError(
  //     (e) {
  //       if (e is DioError) handler.reject(e);
  //     },
  //   );
  // }
}

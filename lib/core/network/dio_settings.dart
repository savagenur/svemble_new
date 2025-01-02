import 'package:dio/dio.dart';
import 'package:svemble_new/core/utils/constants.dart';

class DioSettings {
  static Dio getDioInstance() {
    final dio = Dio(BaseOptions(
      baseUrl: AppUrls.baseUrl,
      contentType: 'application/json',
    ));
    dio.interceptors.addAll([
      // LogInterceptor(
      //   request: true,
      //   error: true,
      //   requestHeader: true,
      //   requestBody: true,
      //   responseBody: true,
      //   responseHeader: false,
      // ),
      InterceptorsWrapper()
    ]);
    return dio;
  }
}

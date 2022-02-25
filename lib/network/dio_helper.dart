import 'package:dio/dio.dart';

import 'end_point.dart';

class DioHelper {
  static  late Dio dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: BASE_URL,
      ),
    );
  }

  static Future<Response> postData({
     Map<String, dynamic>? data,
     String? url,
    String? token,
  }) {
    return dio.post(
      url!,
      data: data,
      options: Options(

      ),
    );
  }

  static Future<Response> getData({
     String? url,
    String? token,
    Map<String, dynamic>? query,
  }) {
    return dio.get(
      url!,
      options: Options(

      ),
      queryParameters: query,
    );
  }

}
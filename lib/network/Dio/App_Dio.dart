import 'package:dio/dio.dart';
/////////////App dio
class AppDioHelper {
  static late Dio dio;
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'http://alaahassan0.pythonanywhere.com/',
      receiveDataWhenStatusError: true,
    ));
  }
  static Future<Response> getdata({
    required String url,
      String? token,

  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? '',


    };
    return dio.get(url);
  }

  static Future<Response> postdata({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
     String? token,


  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? '',

    };

    return dio.post(url, data: data, queryParameters: query);
  }
  static Future<Response> updateData({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
     String? token,


  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? '',

    };

    return dio.put(url, data: data, queryParameters: query);
  }

static Future<Response> Delete({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
     String? token,


  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? '',

    };

    return dio.delete(url, data: data, queryParameters: query);
  }

}









import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:playstation_games_app/common/common.dart';
import 'package:playstation_games_app/dependencies/dependencies_export.dart';


class CallApiImpl implements CallApi {
  @override
  final dio = Dio();

  CallApiImpl() {
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    }
    dio.interceptors.add(HeaderOptions());
  }

  @override
  Future<Response<dynamic>> postJson({required String endPoint, Map<String, dynamic>? data, Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.post(endPoint, data: data ?? {}, queryParameters: queryParameters ?? {});
    } on DioException catch (e) {
      throw ServerException(e.type.name);
    }
  }

  @override
  Future<Response<dynamic>> getJson({required String endPoint, Map<String, dynamic>? queryParameters}) async {
    try {
      return await dio.get(endPoint, queryParameters: queryParameters ?? {});
    } on DioException catch (e) {
      throw ServerException(e.type.name);
    }
  }
}

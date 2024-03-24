import 'package:playstation_games_app/dependencies/dependencies_export.dart';

abstract class CallApi{
  final dio = Dio();

  Future<Response<dynamic>> postJson({required String endPoint, Map<String, dynamic>? data, Map<String, dynamic>? queryParameters});
  Future<Response<dynamic>> getJson({required String endPoint, Map<String, dynamic>? queryParameters});
  }
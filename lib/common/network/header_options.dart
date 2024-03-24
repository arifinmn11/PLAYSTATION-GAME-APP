import 'package:playstation_games_app/dependencies/dependencies_export.dart';

class HeaderOptions extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['Content-Type'] = 'application/x-www-form-urlencoded';
    handler.next(options);
  }
}

import 'package:dio/browser.dart';
import 'package:dio/dio.dart';

class CustomDio extends DioForBrowser {
  //
  CustomDio()
      : super(
          BaseOptions(
            baseUrl: 'backend_base_url',
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 60),
          ),
        ) {
    interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggingInterceptors extends InterceptorsWrapper {
  int maxCharactersPerLine = 200;
  final Dio dio;
  final Future<String> Function() getToken;

  LoggingInterceptors({
    required this.dio,
    required this.getToken,
  });

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await getToken();
    if (token.isNotEmpty) {
      options.headers.addAll({"Authorization": token});
    }
    _logRequest(options);
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    _logResponse(response);
    return super.onResponse(response, handler);
  }

  @override
  Future onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    _logError(err);
    return super.onError(err, handler);
  }

  void _logRequest(RequestOptions options) {
    debugPrint("--> ${options.method} ${options.baseUrl}${options.path}");
    debugPrint("Content type: ${options.contentType}");
    debugPrint("QueryParams: ${options.queryParameters}");
    debugPrint("Headers: ${options.headers}");
    debugPrint("Data: ${options.data}");
  }

  void _logResponse(Response response) {
    debugPrint("<-- STATUS : ${response.statusCode}");
    String responseAsString = response.data.toString();
    if (responseAsString.length > maxCharactersPerLine) {
      int iterations = (responseAsString.length / maxCharactersPerLine).floor();
      for (int i = 0; i <= iterations; i++) {
        int endingIndex = i * maxCharactersPerLine + maxCharactersPerLine;
        if (endingIndex > responseAsString.length) {
          endingIndex = responseAsString.length;
        }
        debugPrint(
            responseAsString.substring(i * maxCharactersPerLine, endingIndex));
      }
    } else {
      debugPrint(response.data.toString());
    }
    debugPrint("<-- END HTTP");
  }

  void _logError(DioException err) {
    debugPrint(
        "ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.baseUrl}${err.requestOptions.path}");
  }
}

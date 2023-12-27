import 'package:dio/dio.dart';
import 'package:flutter_base_project/services/api/interceptor.dart';

class BaseApiService {
  static const String _contentType = 'Content-Type';
  Dio? _dio = Dio();

  BaseApiService() {
    BaseOptions dioOptions = BaseOptions(
      baseUrl: "",
      connectTimeout: const Duration(milliseconds: 6000),
      receiveTimeout: const Duration(milliseconds: 8000),
      headers: {_contentType: 'application/json'},
    );

    _dio = Dio(dioOptions)
      ..interceptors.add(LoggingInterceptors(
        dio: getDio()!,
        getToken: () async {
          // Implement your logic to fetch the token
          return 'YOUR_AUTH_TOKEN';
        },
      ));
  }

  Dio? getDio() => _dio;

  String handleError(DioException DioException) {
    String message = "";

    switch (DioException.type) {
      case DioExceptionType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioExceptionType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          DioException.response?.statusCode,
          DioException.response?.statusMessage,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioExceptionType.unknown:
        if (DioException.message!.contains("SocketException")) {
          message = 'ইন্টারনেট নাই!';
          break;
        }
        message = "Unexpected error occurred";
        break;
      default:
        message = "Something went wrong";
        break;
    }
    return message;
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return error.toString();
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }
}

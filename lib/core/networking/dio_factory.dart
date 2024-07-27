import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// Private constructor as i dont  want allow creating instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(PrettyDioLogger(
        requestBody: true, requestHeader: true, responseBody: true));
  }

  static void addDioHeaders() {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzIyMDM4NTA4LCJleHAiOjE3MjIxMjQ5MDgsIm5iZiI6MTcyMjAzODUwOCwianRpIjoib3FKalpTd2IzUHZ2RTVsZyIsInN1YiI6IjE2MTYiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.H9Ux2d4MQ2jel5yqYfh6Hzl8FuBSBcEG13trMVKMrY8'
    };
  }
}

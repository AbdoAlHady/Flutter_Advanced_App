import 'package:advanced_flutter_app/core/helpers/constants.dart';
import 'package:advanced_flutter_app/core/helpers/shared_pref_helper.dart';
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

  static void setTokenIntoHeadersAfterLogin(String token) async {
    dio?.options.headers = {
      'Authorization':'Bearer $token'
    };
  }

  static void addDioHeaders() async{
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':'Bearer ${await SharedPrefHelper.getString(SharedPrefKeys.userToken)}'
    };
  }
}

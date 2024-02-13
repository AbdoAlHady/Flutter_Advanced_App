import 'package:advanced_flutter_app/core/networking/api_error_handler.dart';
import 'package:advanced_flutter_app/core/networking/api_result.dart';
import 'package:advanced_flutter_app/core/networking/api_service.dart';
import 'package:advanced_flutter_app/features/signup/data/models/sign_up_request_body.dart';
import 'package:advanced_flutter_app/features/signup/data/models/singup_response.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo({required ApiService apiService}) : _apiService = apiService;

  Future<ApiResult<SignUpResponse>> signup(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

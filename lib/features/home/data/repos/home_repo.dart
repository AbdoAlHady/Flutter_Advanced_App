import 'package:advanced_flutter_app/core/networking/api_error_handler.dart';
import 'package:advanced_flutter_app/core/networking/api_result.dart';
import 'package:advanced_flutter_app/features/home/data/apis/home_api_service.dart';
import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';

class HomeRepo {
  final HomeApiService _api;

  HomeRepo(this._api);

  Future<ApiResult<SpecializationResponseModel>>getHomeData()async{

    try {
      final result=await _api.getSpecialization(); 
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }


  }


  
}

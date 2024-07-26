
import 'package:advanced_flutter_app/core/networking/api_constants.dart';
import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'home_api_constants.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)


abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationResponseModel> getSpecialization();
}
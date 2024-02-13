import 'package:advanced_flutter_app/core/networking/api_service.dart';
import 'package:advanced_flutter_app/core/networking/dio_factory.dart';
import 'package:advanced_flutter_app/features/login/data/repos/login_repo.dart';
import 'package:advanced_flutter_app/features/login/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}

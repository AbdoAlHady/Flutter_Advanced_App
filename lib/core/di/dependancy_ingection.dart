import 'package:advanced_flutter_app/core/networking/api_service.dart';
import 'package:advanced_flutter_app/core/networking/dio_factory.dart';
import 'package:advanced_flutter_app/features/home/data/apis/home_api_service.dart';
import 'package:advanced_flutter_app/features/home/data/repos/home_repo.dart';
import 'package:advanced_flutter_app/features/home/logic/home_cubit.dart';
import 'package:advanced_flutter_app/features/login/data/repos/login_repo.dart';
import 'package:advanced_flutter_app/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_flutter_app/features/signup/data/repo/sign_up_repo.dart';
import 'package:advanced_flutter_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // SignUp
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(apiService: getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  //! Home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

}

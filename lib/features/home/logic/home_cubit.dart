import 'package:advanced_flutter_app/features/home/data/repos/home_repo.dart';
import 'package:advanced_flutter_app/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _repo;
  HomeCubit(this._repo) : super(const HomeState.initial());

  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final result = await _repo.getSpecializationData();
    result.when(
      success: (data) {
        emit(HomeState.specializationSuccess(specializationResponseModel: data));
      },
      failure: (error) {
        emit(HomeState.specializationError(message: error.apiErrorModel.message!));
      },
    );

   
  }
}

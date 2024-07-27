import 'package:advanced_flutter_app/core/helpers/extension.dart';
import 'package:advanced_flutter_app/features/home/data/repos/home_repo.dart';
import 'package:advanced_flutter_app/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/specialization_response.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _repo;
  HomeCubit(this._repo) : super(const HomeState.initial());

  List<SpecializationData>? specializationList = [];
  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final result = await _repo.getSpecializationData();
    result.when(
      success: (data) {
        specializationList = data.specializationDataList ?? [];
        // get the doctors list for the first specialization by default
        getDoctorsList(specializationId: specializationList?.first.id);
        emit(HomeState.specializationSuccess(
            specializationData: specializationList));
      },
      failure: (error) {
        emit(HomeState.specializationError(
            message: error.apiErrorModel.message!));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) async {
    List<Doctors>? doctorsList =
        getDoctorsListSpecoalizationById(specializationId);
    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList: doctorsList));
    } else {
      emit(const HomeState.doctorsError(message: "No doctors found"));
    }
  }

  /// returns the list of doctors based on the specialization id
  List<Doctors>? getDoctorsListSpecoalizationById(int? specializationId) {
    return specializationList
        ?.firstWhere((element) => element.id == specializationId)
        .doctorsList;
  }
}

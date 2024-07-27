import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:advanced_flutter_app/features/home/logic/home_state.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/home_cubit.dart';

class SpecializationAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationAndDoctorsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationErrorState ||
          current is SpecializationLoadingState ||
          current is SpecializationSuccessState,
      builder: (context, state) {
        return state.maybeWhen(specializationError: (message) {
         return setupError();
        }, specializationLoading: () {
          return  setupLoading();
        }, specializationSuccess: (specializations) {
          var specializationList =
              specializations.specializationDataList;
          return setupSuccess(specializationList);
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }

  Widget setupSuccess(List<SpecializationData>? specializationList) {
    return Expanded(
          child: Column(
            children: [
              DoctorSpecialityListView(
                specializationData: specializationList!,
              ),
              verticalSpacing(20),
                DoctorsListView(doctorsList: specializationList[0].doctorsList,),
            ],
          ),
        );
  }

    Widget setupLoading(){
      return const Center(
            child: SizedBox(
                child: CircularProgressIndicator()),
          );
    }
    Widget setupError(){
       return const SizedBox.shrink();
    }
}

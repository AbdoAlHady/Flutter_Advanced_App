import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:advanced_flutter_app/features/home/logic/home_state.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/doctors/doctor_shimmer_loading.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/spaciality/spaciality_shimmer_loading.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/spaciality/speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/home_cubit.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({
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
          return setupLoading();
        }, specializationSuccess: (specializations) {
          var specializationList = specializations;
          return setupSuccess(specializationList);
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }

  Widget setupSuccess(List<SpecializationData>? specializationList) {
    return SpecialityListView(
      specializationData: specializationList!,
    );
  }

  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpacialityShimmerLoading(),
            verticalSpacing(15),
          const DoctorShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}

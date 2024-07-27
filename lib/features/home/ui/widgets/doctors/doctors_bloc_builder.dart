import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:advanced_flutter_app/features/home/logic/home_cubit.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/doctors/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/home_state.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
   return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccessState ||
          current is DoctorsSuccessState,
      builder: (context, state) {
        return state.maybeWhen(doctorsError: (message) {
         return setupError();
        },doctorsSuccess : (doctorsList) {
          return setupSuccess(doctorsList);
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }

  Widget setupSuccess(List<Doctors>? doctorsList) {
    return  DoctorsListView(doctorsList: doctorsList!);
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

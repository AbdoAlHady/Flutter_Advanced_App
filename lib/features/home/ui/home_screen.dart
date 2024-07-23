import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_speciality_see_all.dart';
import 'widgets/doctors_list_view.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin:
              EdgeInsets.only(top: 16.h, bottom: 28.h, left: 20.w, right: 20.w),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpacing(24),
              const DoctorSpecialitySeeAll(),
              verticalSpacing(16),
              const DoctorSpecialityListView(),
              verticalSpacing(20),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/doctors_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key, required this.specializationData});
  final List<SpecializationData> specializationData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationData.length,
        itemBuilder: (context, index) {
          return DoctorsSpecialityListViewItem(specializationData: specializationData[index],index: index,);
        },
      ),
    );
  }
}


import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:advanced_flutter_app/features/home/logic/home_cubit.dart';
import 'package:advanced_flutter_app/features/home/ui/widgets/spaciality/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({super.key, required this.specializationData});
  final List<SpecializationData> specializationData;

  @override
  State<SpecialityListView> createState() =>
      _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(specializationId: widget.specializationData[index].id);
            },
            child: SpecialityListViewItem(
              specializationData: widget.specializationData[index],
              index: index,
              selectedIndex: selectedIndex,
            ),
          );
        },
      ),
    );
  }
}

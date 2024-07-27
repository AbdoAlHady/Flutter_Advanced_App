import 'package:advanced_flutter_app/core/constant/image_manager.dart';
import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  const DoctorsSpecialityListViewItem({
    super.key,
    required this.specializationData, required this.index,
  });

  final SpecializationData specializationData;
  final int index ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorsManager.lightBlue,
            child: SvgPicture.asset(
              ImagesManager.generalSpeciality,
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpacing(12),
          Text(
            specializationData.name!,
            style: TextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}

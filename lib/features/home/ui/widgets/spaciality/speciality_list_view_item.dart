import 'package:advanced_flutter_app/core/constant/image_manager.dart';
import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  const SpecialityListViewItem({
    super.key,
    required this.specializationData,
    required this.index,
    required this.selectedIndex,
  });

  final SpecializationData specializationData;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
          index == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.lightBlue,
                    border: Border.all(
                      color: ColorsManager.darkBlue,
                      width: 1,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset(
                      ImagesManager.generalSpeciality,
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
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
            style: index == selectedIndex
                ? TextStyles.font14DarkBlueBold
                : TextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}

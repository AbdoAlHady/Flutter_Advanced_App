import 'package:advanced_flutter_app/core/constant/image_manager.dart';
import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
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
                  'Specialization',
                  style: TextStyles.font12DarkBlueRegular,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

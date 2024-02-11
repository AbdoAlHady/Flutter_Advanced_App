import 'package:advanced_flutter_app/core/constant/value_manager.dart';
import 'package:advanced_flutter_app/core/helpers/extension.dart';
import 'package:advanced_flutter_app/core/routing/routes.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: TextButton.styleFrom(
            backgroundColor: ColorsManager.mainBlue,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size(double.infinity, 52.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s16))),
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteMeduim,
        ),
      ),
    );
  }
}

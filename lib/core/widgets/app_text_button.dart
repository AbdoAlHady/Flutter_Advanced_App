import 'package:advanced_flutter_app/core/constant/value_manager.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.verticalPadding,
      this.horizontalPadding,
      this.buttonHeight,
      this.buttonWidth,
      required this.buttonText,
      required this.textStyle,
      required this.onPressed});
  final double? borderRadius;
  final Color? backgroundColor;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? buttonHeight;
  final double? buttonWidth;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius??AppSize.s16,),
        ),
        backgroundColor: backgroundColor??ColorsManager.mainBlue,
        padding:  EdgeInsets.symmetric(vertical: verticalPadding?.h??AppPadding.p14.h,horizontal: horizontalPadding?.w??AppPadding.p12.w),
        fixedSize: Size(buttonWidth?.w?? double.maxFinite,buttonHeight?.h?? AppSize.s52.h)
      ),
      child: Text(buttonText,style: textStyle,),
    );
  }
}

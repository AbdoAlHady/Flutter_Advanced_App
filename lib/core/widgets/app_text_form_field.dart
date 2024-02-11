import 'package:advanced_flutter_app/core/constant/value_manager.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      required this.hintText,
      this.hintStyle,
      this.isObscureText,
      this.suffixIcon, this.backgroundColor});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final String hintText;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                  horizontal: AppPadding.p20.w, vertical: AppPadding.p18.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSize.s16),
                  borderSide: const BorderSide(
                      color: ColorsManager.mainBlue, width: AppSize.s1_3)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSize.s16),
                  borderSide: const BorderSide(
                      color: ColorsManager.lighterGrey, width: AppSize.s1_3)),
          hintStyle: hintStyle ?? TextStyles.font14GreyMeduim,
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: backgroundColor ?? ColorsManager.moreLightGrey,
          filled:true),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMeduim,
    );
  }
}

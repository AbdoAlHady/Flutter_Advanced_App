import 'package:advanced_flutter_app/core/constant/value_manager.dart';
import 'package:advanced_flutter_app/core/helpers/font_weight_helper.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(fontSize: 24.sp, fontWeight: FontWeightHelper.bold, color: Colors.black);
  static TextStyle font32BlueBold =TextStyle(fontSize: 32.sp, fontWeight: FontWeightHelper.bold, color: ColorsManager.mainBlue);
  static TextStyle font13GreyRegular =TextStyle(fontSize: 13.sp, fontWeight: FontWeightHelper.regular, color: ColorsManager.grey);
  static TextStyle font16WhiteMeduim =TextStyle(fontSize: 16.sp, fontWeight: FontWeightHelper.meduim, color: Colors.white);
  static TextStyle font24BlueBold =TextStyle(fontSize: 24.sp,fontWeight:FontWeightHelper.bold,color: ColorsManager.mainBlue );
  static TextStyle font14GreyRegular =TextStyle(fontSize: 14.sp, fontWeight: FontWeightHelper.regular, color: ColorsManager.grey);
  static TextStyle font14GreyMeduim =TextStyle(fontSize: 14.sp,fontWeight: FontWeightHelper.meduim,color: ColorsManager.lightGrey);
  static TextStyle font14DarkBlueMeduim =TextStyle(fontSize: 14.sp,fontWeight: FontWeightHelper.meduim,color: ColorsManager.darkBlue);
  static TextStyle font12BlueRegular=TextStyle(fontSize: AppSize.s12.sp,fontWeight: FontWeightHelper.regular,color: ColorsManager.mainBlue);
  static TextStyle font16WhiteSemiBold=  TextStyle(fontSize: 16.sp,fontWeight: FontWeightHelper.semiBold,color: Colors.white);
  static TextStyle font11GreyRegular=  TextStyle(fontSize: 11.sp,fontWeight: FontWeightHelper.regular,color: ColorsManager.lightGrey);
  static TextStyle font11DarkBlueMeduim=  TextStyle(fontSize: 11.sp,fontWeight: FontWeightHelper.meduim,color: ColorsManager.darkBlue);
  static TextStyle font13BlueSemiBold=  TextStyle(fontSize: 13.sp,fontWeight: FontWeightHelper.semiBold,color: ColorsManager.mainBlue);


}

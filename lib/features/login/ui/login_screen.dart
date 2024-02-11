import 'package:advanced_flutter_app/core/constant/value_manager.dart';
import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:advanced_flutter_app/core/widgets/app_text_form_field.dart';
import 'package:advanced_flutter_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_text_button.dart';
import 'widgets/terms_and_condition_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppPadding.p30.w, vertical: AppPadding.p30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Back', style: TextStyles.font24BlueBold),
              verticalSpacing(8),
              Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GreyRegular),
              verticalSpacing(36),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const AppTextFormField(hintText: 'Email'),
                    verticalSpacing(16),
                    AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(isObscureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )),
                    verticalSpacing(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text('Forget Password?',style: TextStyles.font12BlueRegular),
                    ),
                    verticalSpacing(40),
                    AppTextButton(buttonText: 'Login',textStyle: TextStyles.font16WhiteSemiBold,onPressed: (){},),
                    verticalSpacing(16),
                    const TermsAndConditionText(),
                    verticalSpacing(60),
                    const AlreadyHaveAccountText(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
    );
  }
}

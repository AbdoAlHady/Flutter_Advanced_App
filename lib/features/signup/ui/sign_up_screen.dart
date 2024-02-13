import 'package:advanced_flutter_app/core/constant/value_manager.dart';
import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:advanced_flutter_app/core/widgets/app_text_button.dart';
import 'package:advanced_flutter_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:advanced_flutter_app/features/signup/ui/widgets/already_have_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/sign_up_form.dart';
import 'widgets/sing_up_bloc_listener.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                Text("Create Account", style: TextStyles.font24BlueBold),
                verticalSpacing(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpacing(36),
                const SignUpForm(),
                verticalSpacing(40),
                AppTextButton(
                  buttonText: 'Create Account',
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {
                    validateThenSignUp(context);
                  },
                ),
                verticalSpacing(20),
                const Center(child: AlreadyHaveAccountText()),
                const SignUpBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenSignUp(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignUpStates();
    }
  }
}

import 'package:advanced_flutter_app/core/constant/value_manager.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionText extends StatelessWidget {
  const TermsAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: 'By logging, you agree to our ',
              style: TextStyles.font11GreyRegular),
          TextSpan(
              text: 'Terms & Conditions ',
              style: TextStyles.font11DarkBlueMeduim),
          TextSpan(text: 'and ', style: TextStyles.font11GreyRegular.copyWith(height: AppSize.s1_5)),
          TextSpan(
              text: 'PrivacyPolicy. ', style: TextStyles.font11DarkBlueMeduim),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

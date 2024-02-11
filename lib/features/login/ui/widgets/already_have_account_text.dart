import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'Already have an account yet? ',style: TextStyles.font13GreyRegular),
          TextSpan(text: 'Sign Up ',style: TextStyles.font13BlueSemiBold)
        ]
       ),
       textAlign: TextAlign.center,
    );
  }
}
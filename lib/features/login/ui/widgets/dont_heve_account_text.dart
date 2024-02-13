import 'package:advanced_flutter_app/core/helpers/extension.dart';
import 'package:advanced_flutter_app/core/routing/routes.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: 'Don\'t have an account yet? ',
            style: TextStyles.font13GreyRegular),
        TextSpan(
            text: 'Sign Up ',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signupScreen);
              })
      ]),
      textAlign: TextAlign.center,
    );
  }
}

import 'package:advanced_flutter_app/core/helpers/extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/text_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: 'Already have an account ? ',
            style: TextStyles.font13GreyRegular),
        TextSpan(
          text: 'Login ',
          style: TextStyles.font13BlueSemiBold,
           recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              }
        )
      ]),
      textAlign: TextAlign.center,
    );
  }
}

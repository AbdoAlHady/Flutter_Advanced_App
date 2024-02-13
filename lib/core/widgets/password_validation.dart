import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinLength});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      buildValidationRow('At least 1 lowercase latter', hasLowerCase),
      verticalSpacing(2),
      buildValidationRow('At least 1 uppercase latter', hasUpperCase),
      verticalSpacing(2),
      buildValidationRow('At least 1 special latter', hasSpecialCharacter),
      verticalSpacing(2),
      buildValidationRow('At least 1 number', hasNumber),
      verticalSpacing(2),
      buildValidationRow('At least 8 characters long', hasMinLength),
    ]);
  }
 
  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.grey),
        horizontalSpacing(6),
        Text(
          text,
          style: TextStyles.font13BlueDarkRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color:
                  hasValidated ? ColorsManager.grey : ColorsManager.darkBlue),
        )
      ],
    );
  }
}

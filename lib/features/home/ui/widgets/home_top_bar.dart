import 'package:advanced_flutter_app/core/constant/image_manager.dart';
import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Abdo!',
              style: TextStyles.font18BlackBold,
            ),
            verticalSpacing(2),
             Text(
              'How Ary you Today?',
              style: TextStyles.font11GreyRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0, 
          backgroundColor: ColorsManager.moreLighterGrey,
          child: SvgPicture.asset(ImagesManager.notifications),
        )


      ],
    );
  }
}

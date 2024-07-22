import 'package:advanced_flutter_app/core/constant/image_manager.dart';
import 'package:advanced_flutter_app/core/constant/value_manager.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(ImageManager.docLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.white, Colors.white.withOpacity(0.0)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [
              0.14,
              0.4
            ], // Means the point that the gradient will stop on it
          )),
          child: Image.asset(
            ImageManager.onBoardingDotctor,
          ),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
            child: Text(
              'Best Doctor Appointment App',
              style: TextStyles.font32BlueBold.copyWith(height: 1.4),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}

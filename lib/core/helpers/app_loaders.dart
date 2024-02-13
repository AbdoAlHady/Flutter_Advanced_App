import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import '../theming/text_styles.dart';

class AppLoaders {
  static loading(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(color: ColorsManager.mainBlue),
        );
      },
    );
  }

  static successSnackBar(BuildContext context, String title, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: [
          const Icon(
            Icons.check_circle_outline,
            color: Colors.white,
            
          ),
          horizontalSpacing(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyles.font15WhiteSemiBold),
                Text(
                  message,
                  style: TextStyles.font15WhiteMeduim
                      .copyWith(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
      duration: const Duration(seconds: 3),
      backgroundColor: ColorsManager.mainBlue,
    ));
  }

  static errorSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: [
          const Icon(
            Icons.error,
            color: Colors.white,
          ),
          horizontalSpacing(6),
          Text(
            message,
            style: TextStyles.font15WhiteMeduim.copyWith(color: Colors.white),
          )
        ],
      ),
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.red.shade600,
    ));
  }

//   static errorSnackBar({required title, message = '', duration = 3}) {
//     Get.snackbar(
//       title,
//       message,
//       isDismissible: true,
//       shouldIconPulse: true,
//       colorText: Colors.white,
//       backgroundColor: Colors.red.shade600,
//       snackPosition: SnackPosition.BOTTOM,
//       duration: Duration(seconds: duration),
//       margin: const EdgeInsets.all(20),
//       icon: const Icon(Icons.error_outline_sharp, color: Colors.white),
//     );
//   }
}

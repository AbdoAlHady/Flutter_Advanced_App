import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import '../theming/text_styles.dart';

class AppLoaders {
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
            style:
                TextStyles.font15DarkBlueMeduim.copyWith(color: Colors.white),
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

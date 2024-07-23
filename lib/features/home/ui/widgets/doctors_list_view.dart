import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 20.h),

            child: Row(
              children: [
                // Doctor Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1584467735815-f778f274e296?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGRvY3RvciUyMGltYWdlfGVufDB8fDB8fHww',
                    width: 110.w,
                    height: 110.h,
                    fit: BoxFit.fill,
                  ),
                ),
                horizontalSpacing(16),
                // Doctor Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Doctor Name,
                      Text(
                        'Dr. Randy Wigham',
                        style: TextStyles.font16DarkBlueBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpacing(8),
                      // Doctor Speciality,
                      Text(
                        'General | RSUD Gatot Subroto',
                        style: TextStyles.font12GreyMedium,
                      ),
                      verticalSpacing(8),
                  
                      Text(
                        'Email | Abdo.agiry90@gmail.com',
                        style: TextStyles.font12GreyMedium,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/theming/text_styles.dart';
import 'package:advanced_flutter_app/core/widgets/shimmer_effect.dart';
import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({
    super.key,
    required this.doctorModel,
  });
  final Doctors doctorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: Row(
        children: [
          // Doctor Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
                imageUrl:
                    'https://images.unsplash.com/photo-1584467735815-f778f274e296?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGRvY3RvciUyMGltYWdlfGVufDB8fDB8fHww',
                width: 110.w,
                height: 110.h,
                progressIndicatorBuilder: (context, url, progress) => ShimmerEffect(width: 110.w, height: 110.h, borderRadius: 12),
                fit: BoxFit.fill),
          ),
          horizontalSpacing(16),
          // Doctor Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Doctor Name,
                Text(
                  doctorModel.name ?? 'name',
                  style: TextStyles.font16DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpacing(8),
                // Doctor Speciality,
                Text(
                  '${doctorModel.degree} | ${doctorModel.phone}',
                  style: TextStyles.font12GreyMedium,
                ),
                verticalSpacing(8),

                Text(
                  'Email | ${doctorModel.email}',
                  style: TextStyles.font12GreyMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

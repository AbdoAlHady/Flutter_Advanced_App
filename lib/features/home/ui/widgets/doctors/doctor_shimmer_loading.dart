import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/widgets/shimmer_effect.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorShimmerLoading extends StatelessWidget {
  const DoctorShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 20.h),
            child: Row(
              children: [
                ShimmerEffect(
                  width: 110.w,
                  height: 110.h,
                  borderRadius: 12,
                ),
                horizontalSpacing(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerEffect(
                        width: 180.w,
                        height: 18.h,
                        borderRadius: 5,
                      ),
                      verticalSpacing(8),
                      ShimmerEffect(
                        width: 150,
                        height: 14.h,
                        borderRadius: 5,
                      ),
                      verticalSpacing(8),
                      ShimmerEffect(
                        width: 150,
                        height: 14.h,
                        borderRadius: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

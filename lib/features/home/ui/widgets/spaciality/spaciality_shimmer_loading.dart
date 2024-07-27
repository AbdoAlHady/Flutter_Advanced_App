import 'package:advanced_flutter_app/core/helpers/spacing.dart';
import 'package:advanced_flutter_app/core/widgets/shimmer_effect.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpacialityShimmerLoading extends StatelessWidget {
  const SpacialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  ShimmerEffect(
                    height: 60.h,
                    width: 60.w,
                    borderRadius: 50,
                  ),
                  verticalSpacing(12),
                  ShimmerEffect(
                    height: 14.h,
                    width: 70.w,
                    borderRadius: 5,
                  ),
                ],
              ));
        },
      ),
    );
  }
}

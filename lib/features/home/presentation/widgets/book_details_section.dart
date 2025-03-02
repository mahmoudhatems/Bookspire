import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: const CustomFeaturedListViewItem(),
            ),
          ],
        ),

        SizedBox(height: 20.h),
        // Book Title
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Too Late",
              style: Styles.styleSemiBoldText20darkBlueJua.copyWith(
                fontSize: 24.sp,
              ),
              maxLines: 2,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        // Author
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Alex Michaelides",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.styleNormalText14GrayRoboto.copyWith(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}

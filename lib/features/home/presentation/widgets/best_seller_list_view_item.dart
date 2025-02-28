import 'package:bookspire/core/utils/strings.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// BestSellerListViewItem is a widget that displays the best seller book list item.
/// It contains the book cover image and the book title.
/// It is used in the HomeBody widget.
class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.67 / 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16.r),
                image: const DecorationImage(
                  image: AssetImage(StringManager.testBookCover),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "The Silent Patient The Silent Patient The Silent Patient",
                  style: Styles.styleSemiBoldText20darkBlueJua,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "Alex Michaelides",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                  fontFamily: StringManager.fontFamilyRoboto,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "4.5",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.sp,
                  fontFamily: StringManager.fontFamilyRoboto,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

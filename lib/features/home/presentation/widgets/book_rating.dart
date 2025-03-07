import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// BookRating is a widget that displays the rating of the book.
/// It is used in the BestSellerListViewItem widget.
class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.ratingCount});
  final num rating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: ColorsManager.yellow,
          size: 18.sp,
        ),
        SizedBox(width: 8.w),
        Text(rating.toString(),
            style: Styles.styleNormalText14GrayRoboto
                .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600)),
        SizedBox(width: 5.w),
        Text(
          "($ratingCount)",
          style: Styles.styleNormalText14GrayRoboto,
        ),
      ],
    );
  }
}

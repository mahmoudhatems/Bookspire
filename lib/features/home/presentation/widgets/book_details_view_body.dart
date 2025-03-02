import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/core/widgets/custom_buttom.dart';
import 'package:bookspire/features/home/presentation/widgets/book_rating.dart';
import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              size: 26.sp,
              color: ColorsManager.textIconColor,
            ),
            onPressed: () {
              // Add to favorites change fill color to red
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 26.sp,
            color: ColorsManager.textIconColor,
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          // Book Cover
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
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
          // Rating
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20.w),
              const BookRating(),
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                    child: CustomButtom(
                  text: "19.99 \$",
                  onPressed: () {},
                  backgroundColor: ColorsManager.whiteColor,
                  textStyle: Styles.stylesemiBoldText18ButomRoboto,
                  borderColor: ColorsManager.yellow,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    bottomLeft: Radius.circular(10.r),
                  ),
                )),
                Expanded(
                    child: CustomButtom(
                  text: " Free Preview",
                  onPressed: () {},
                  backgroundColor: ColorsManager.yellow,
                  textStyle: Styles.stylesemiBoldText18ButomRoboto.copyWith(
                    color: ColorsManager.backGroundMoreLight,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.r),
                    bottomRight: Radius.circular(10.r),
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

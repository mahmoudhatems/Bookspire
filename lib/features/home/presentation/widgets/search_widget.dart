import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

/// SearchField is a widget that displays the search field and the user profile image.
/// It is used in the HomeScreen widget.
class SearchField extends StatelessWidget {
  const SearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 210.h,
          height: 44.h,
          decoration: BoxDecoration(
            color: ColorsManager.realWhiteColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: const Icon(
                  Icons.search,
                  color: ColorsManager.textIconColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Text(
                    overflow: TextOverflow.ellipsis,
                    'Search a book or author...',
                    style: Styles.styleText14BlackColorRoboto),
              ),
            ],
          ),
        ),
        SizedBox(width: 10.w),
        SizedBox(
          height: 44.h,
          width: 44.w,
          child: InstaImageViewer(
            disposeLevel: DisposeLevel.high,
            child: CircleAvatar(
              backgroundImage: const AssetImage(
                StringManager.userImage,
              ),
              backgroundColor: Colors.transparent,
              onBackgroundImageError: (exception, stackTrace) =>
                  const Icon(Icons.person),
            ),
          ),
        ),
      ],
    );
  }
}

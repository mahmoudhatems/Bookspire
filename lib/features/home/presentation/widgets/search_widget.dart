
import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  color:ColorsManager.textIconColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Text(
                  overflow:  TextOverflow.ellipsis,
                  'Search a book or author...',
                  style: TextStyle(
                    color:ColorsManager.textIconColor,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10.w),
        SizedBox(
          height: 44.h,
          width: 44.w,
          child:  CircleAvatar(
            child:Image.asset(StringManager.userImage,fit: BoxFit.cover,) ,
          ),
        ),
      ],
    );
  }
}

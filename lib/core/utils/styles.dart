import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class 
Styles {
  static final titleMedium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.textIconColor,
    fontFamily: StringManager.fontFamilyRoboto,
  );
}
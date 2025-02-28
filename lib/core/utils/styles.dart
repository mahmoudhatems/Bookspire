import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Styles class is used to store the text styles used in the app.
abstract class Styles {
  static final styleSemiBoldText20BlackColorRoboto = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.textIconColor,
    fontFamily: StringManager.fontFamilyRoboto,
  );

  static final styleText14BlackColorRoboto = TextStyle(
    color: ColorsManager.textIconColor,
    fontSize: 14.sp,
    fontFamily: StringManager.fontFamilyRoboto,
  );
  static final styleBoldText34darkBlueJua = TextStyle(
      fontFamily: StringManager.fontFamilyJua,
      fontSize: 34.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManager.darkBlueTextColor);
  static final styleBoldText28darkBlueJua = TextStyle(
      fontFamily: StringManager.fontFamilyJua,
      fontSize: 28.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManager.darkBlueTextColor);
      static final styleSemiBoldText20darkBlueJua =  TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color:  ColorsManager.darkBlueTextColor,
                    fontFamily: StringManager.fontFamilyJua,
                  );
}


import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(


      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [   
            Color(0xFFF6E7C8),
            Color(0xFFFFFFFF),
          ],
        ),
      ),
      child: Center(
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
             StringManager.bookLogo,
              width: 200.w,
              height: 200.h,
            ),
             SizedBox(height: 20.h),
            Text(
              StringManager.appName,
              style: TextStyle(
                fontFamily:StringManager.fontFamilyJua,
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
                color : ColorsManager.darkBlueTextColor
              ),)
             

        
          ],
        ),
      ),
    );
  }
}

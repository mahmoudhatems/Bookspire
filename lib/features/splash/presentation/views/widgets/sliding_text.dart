


import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required Animation<Offset> slidingAnimation,
  }) : _slidingAnimation = slidingAnimation;

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _slidingAnimation,
    
      builder: (context, _) {
        return SlideTransition(
          position: _slidingAnimation, //  SlideTransition
          child: Text(
            textAlign: TextAlign.center,
            StringManager.appName,
            style: TextStyle(
                fontFamily: StringManager.fontFamilyJua,
                fontSize: 36.sp,
                fontWeight: FontWeight.bold,
                color: ColorsManager.darkBlueTextColor),
          ),
        );
      }
    );
  }
}

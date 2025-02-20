
import 'package:bookspire/core/utils/constants.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:bookspire/features/home/presentation/views/home_view.dart';
import 'package:bookspire/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController; //
  late Animation<Offset> _slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimated();

    navigateToHome();
  }

  void navigateToHome() {
    
    Future.delayed(const Duration(seconds: 2), () {
        Get.to(()=>
          const HomeView(),transition: Transition.fadeIn, duration:  transationduration) 
      ;    
    });
  }

  void initSlidingAnimated() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0))
            .animate(CurvedAnimation(
                parent: _animationController,
                curve: Curves.fastEaseInToSlowEaseOut));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(
              StringManager.bookLogo,
              width: 200.w,
              height: 200.h,
            ),
            SizedBox(height: 20.h),
            SlidingText(slidingAnimation: _slidingAnimation)
          ],
        ),
      ),
    );
  }
}

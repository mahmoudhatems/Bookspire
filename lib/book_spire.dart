import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
class BookSpire extends StatelessWidget {
  const BookSpire({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      splitScreenMode: false,
      
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData.light().copyWith(
          scaffoldBackgroundColor: ColorsManager.backGroundMoreLight,
        ),
       home: const SplashView(),
      ),
    );
  }
}
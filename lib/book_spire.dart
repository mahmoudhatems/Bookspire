import 'package:bookspire/core/routing/app_routing.dart';
import 'package:bookspire/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookSpire extends StatelessWidget {
  const BookSpire({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: false,
      designSize: const Size(375, 812),
      child: MaterialApp.router(
        routerConfig: AppRouting.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: ColorsManager.backGroundMoreLight,
        ),
      ),
    );
  }
}

import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:bookspire/features/home/presentation/widgets/home_body.dart';
import 'package:bookspire/features/home/presentation/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsManager.backGroundMoreLight,
          title: const SearchField(),
        ),
        drawer: Drawer(
          backgroundColor: ColorsManager.realWhiteColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: ColorsManager.gold,
                    ),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFF6E7C8),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      alignment: Alignment.center,
                      StringManager.bookLogo,
                      width: 70.w,
                      height: 70.h,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      textAlign: TextAlign.center,
                      StringManager.appName,
                      style: TextStyle(
                          fontFamily: StringManager.fontFamilyJua,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                          color: ColorsManager.darkBlueTextColor),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading:
                    const Icon(Icons.home, color: ColorsManager.textIconColor),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to home screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.category,
                    color: ColorsManager.textIconColor),
                title: const Text('Categories'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to categories screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite,
                    color: ColorsManager.textIconColor),
                title: const Text('Favorites'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to favorites screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings,
                    color: ColorsManager.textIconColor),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to settings screen
                },
              ),
              const Divider(
                color: ColorsManager.gold,
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app,
                    color: ColorsManager.textIconColor),
                title: const Text('Logout'),
                onTap: () {
                  // Handle logout
                },
              ),
            ],
          ),
        ),
        body: const HomeBody());
  }
}

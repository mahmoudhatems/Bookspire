import 'package:bookspire/features/home/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SliderDrawer(
          slideDirection: SlideDirection.leftToRight,
         
          key: _sliderDrawerKey,
          
          appBar: SliderAppBar(
            
            config: SliderAppBarConfig(
              title: SearchField()
            ),
          ),
          sliderOpenSize: 150.w,
          slider:Drawer(
            
          ),
          child: HomeScreenBody()
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 200.w,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Text(
              'Search',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

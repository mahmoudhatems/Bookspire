import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewitem.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// FeaturedBooksListView is a widget that displays the featured book list.
/// It uses CarouselSlider instead of ListView.builder for a smoother experience.
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.29,
      child: CarouselSlider.builder(
        itemCount: 5, // Replace with the actual number of featured books
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.29,
          viewportFraction: 0.5, // Controls how much of the next item is visible
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlay: true, 
          autoPlayInterval: const Duration(seconds:1),
        ),
        itemBuilder: (context, index, realIndex) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal:6.0.w),
            child: const CustomFeaturedListViewItem(),
          );
        },
      ),
    );
  }
}

import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.32,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (constext, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: const CustomFeaturedListViewItem(),
            );
          }),
    );
  }
}

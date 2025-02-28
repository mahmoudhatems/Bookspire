import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/get_utils.dart';
/// FeaturedBooksListView is a widget that displays the featured book list.
/// It contains the CustomFeaturedListViewItem.
/// It is used in the HomeBody widget.
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.32,
      child: ListView.builder(
        itemExtent: context.width * 0.5,
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

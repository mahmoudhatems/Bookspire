import 'package:bookspire/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// CustomFeaturedListViewItem is a widget that displays the featured book list item.
/// It contains the book cover image.
/// It is used in the HomeBody widget.
class CustomFeaturedListViewItem extends StatelessWidget {
  const CustomFeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.32,
      child: AspectRatio(
        aspectRatio: 2.67 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16.r),
            image: const DecorationImage(
              image: AssetImage(StringManager.testBookCover),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

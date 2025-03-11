import 'package:bookspire/core/widgets/custom_loading_indecator_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// CustomFeaturedListViewItem is a widget that displays the featured book list item.
/// It contains the book cover image.
/// It is used in the HomeBody widget.
class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.bookCoverImageURL});
  final String bookCoverImageURL;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.32,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: AspectRatio(
          aspectRatio: 2.9 / 4,
          child: CachedNetworkImage(
            imageUrl: bookCoverImageURL,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}

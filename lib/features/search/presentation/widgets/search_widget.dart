import 'package:bookspire/core/routing/routes.dart';
import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

/// SearchField is a widget that allows users to search for books or authors.
class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  void _onSearchSubmitted(String query) {
    if (query.isNotEmpty) {
      final encodedQuery =query;
      GoRouter.of(context).push('${Routes.search}?query=$encodedQuery');
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 210.h,
          height: 44.h,
          decoration: BoxDecoration(
            color: ColorsManager.realWhiteColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: TextField(
            cursorColor: ColorsManager.textIconColor,
            controller: _searchController,
            onSubmitted: _onSearchSubmitted,
            decoration: InputDecoration(
              prefixIcon:
                  const Icon(Icons.search, color: ColorsManager.textIconColor),
              hintText: 'Search a book or author..',
              hintStyle: Styles.styleText14BlackColorRoboto,
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 12.h),
            ),
            style: Styles.styleText14BlackColorRoboto,
          ),
        ),
        SizedBox(width: 10.w),
        SizedBox(
          height: 44.h,
          width: 44.w,
          child: InstaImageViewer(
            disposeLevel: DisposeLevel.high,
            child: CircleAvatar(
              backgroundImage: const AssetImage(StringManager.userImage),
              backgroundColor: Colors.transparent,
              onBackgroundImageError: (exception, stackTrace) =>
                  const Icon(Icons.person),
            ),
          ),
        ),
      ],
    );
  }
}

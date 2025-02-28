import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewItem.dart';
import 'package:bookspire/features/home/presentation/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column( crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),
       const FeaturedBooksListView(),
        SizedBox(height: 35.h),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              Text("Best Seller", style: Styles.titleMedium),
            ],
          ),
        ),
        
      ],
    );
  }
}
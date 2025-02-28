import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/features/home/presentation/widgets/best_seller_list_view_item.dart';
import 'package:bookspire/features/home/presentation/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
/// HomeBody is a widget that displays the home screen body.
/// It contains the FeaturedBooksListView and BestSellerListViewItem.
/// It is used in the HomeScreen widget.
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Best Seller", style: Styles.styleSemiBoldText20BlackColorRoboto),
              SizedBox(height: 20.h),
              
              BestSellerListViewItem(),

            ],
          ),
        ),
        
      ],
    );
  }
}
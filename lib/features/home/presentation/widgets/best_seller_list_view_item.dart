import 'package:bookspire/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: Row(
        children: [
          AspectRatio(
          aspectRatio: 2.67/4,
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
           
        ],
      
      ),
    );
  }
}
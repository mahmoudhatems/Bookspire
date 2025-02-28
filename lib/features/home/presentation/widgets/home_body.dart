import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewItem.dart';
import 'package:bookspire/features/home/presentation/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child:   Column(
        children: [
          FeaturedBooksListView(),
        ],
      ),
    );
  }
}
import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/core/widgets/back_leading_appbar.dart';
import 'package:bookspire/features/home/presentation/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.backGroundMoreLight,
        leading: const BackLeadingAppbar(),
        title: Text(
          "Search Results",
          style: Styles.styleBoldText20ButomRoboto,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                 //   child: const BookListViewItem(),
                 child: Text("data"),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

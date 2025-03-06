import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: const CustomBookImage(
              bookCoverImageURL: "https://avatars.githubusercontent.com/u/113213094?s=400&u=58762df8267a952866f4c2b734a0631ae92e4547&v=4",
            )
          );
        },
      ),
    );
  }
}
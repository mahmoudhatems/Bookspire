import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/core/widgets/back_leading_appbar.dart';
import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:bookspire/features/home/presentation/widgets/book_details_section.dart';
import 'package:bookspire/features/home/presentation/widgets/book_rating.dart';
import 'package:bookspire/features/home/presentation/widgets/books_actions.dart';
import 'package:bookspire/features/home/presentation/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 26.sp,
                    color: ColorsManager.textIconColor,
                  ),
                  onPressed: () {
                    // Add to favorites change fill color to red
                  },
                ),
              ],
              leading: const BackLeadingAppbar(),
            ),
            body: Column(
              children: [
                // Book Cover
                 BookDetailsSection(
                  bookModel: bookModel,
                ),
                // Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20.w),
                     BookRating(
                      rating: bookModel.volumeInfo.averageRating ?? 0,
                      ratingCount: bookModel.volumeInfo.ratingsCount ?? 0,

                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                 BooksActions(
                  bookModel: bookModel,
                ),
                Expanded(child: SizedBox(height: 20.h)),
                // suggested books
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        "You Can Also Like",
                        style: Styles.styleText14BlackColorRoboto.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                // suggested books list
                const SimilarBooksListView(),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        )
      ],
    );
  }
}

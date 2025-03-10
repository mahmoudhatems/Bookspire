import 'package:bookspire/core/routing/routes.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:bookspire/features/home/presentation/widgets/book_rating.dart';
import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// BestSellerListViewItem is a widget that displays the best seller book list item.
/// have a book cover, title, author, and price.
/// It is used in the HomeBody widget.
class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 10.w),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(Routes.bookDetails);
        },
        child: SizedBox(
          height: 130.h,
          child: Row(
            children: [
              CustomBookImage(bookCoverImageURL: bookModel.volumeInfo.imageLinks!.thumbnail??''),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.styleSemiBoldText20darkBlueJua,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.styleNormalText14GrayRoboto,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Text(
                          "Free",
                          style: Styles.styleBoldText20GrayRoboto,
                          maxLines: 1,
                        ),
                        const Spacer(),
                         BookRating(
                          rating: bookModel.volumeInfo.averageRating??0,
                          ratingCount: bookModel.volumeInfo.ratingsCount??0,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

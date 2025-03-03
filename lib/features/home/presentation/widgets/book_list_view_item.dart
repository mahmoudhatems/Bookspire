import 'package:bookspire/core/routing/routes.dart';
import 'package:bookspire/core/utils/strings.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/features/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

/// BestSellerListViewItem is a widget that displays the best seller book list item.
/// have a book cover, title, author, and price.
/// It is used in the HomeBody widget.
class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 10),
      child: GestureDetector(
        onTap: () {
           GoRouter.of(context).push(Routes.bookDetails);
        },
        child: SizedBox(
          height: 130.h,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.67 / 4,
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
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Text(
                        "The Silent Patient The Silent Patient The Silent Patient",
                        style: Styles.styleSemiBoldText20darkBlueJua,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Alex Michaelides",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.styleNormalText14GrayRoboto,
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Text(
                          "12.99 \$",
                          style: Styles.styleBoldText20GrayRoboto,
                          maxLines: 1,
                        ),
                  
                     const   Spacer(),
                       const  BookRating(),
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

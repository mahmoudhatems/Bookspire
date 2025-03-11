import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:bookspire/features/home/presentation/widgets/custom_featured_list_viewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child:  CustomBookImage(
                bookCoverImageURL:
                    bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
              ),
            ),
          ],
        ),

        SizedBox(height: 20.h),
        // Book Title
        Text(
          textAlign: TextAlign.center,
          bookModel.volumeInfo.title!,
          style: Styles.styleSemiBoldText20darkBlueJua.copyWith(
            fontSize: 22.sp,
          ),
          maxLines: 2,
        ),
        SizedBox(height: 10.h),
        // Author
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              bookModel.volumeInfo.authors![0],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.styleNormalText14GrayRoboto.copyWith(
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}

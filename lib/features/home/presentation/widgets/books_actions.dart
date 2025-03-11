import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/core/widgets/custom_buttom.dart';
import 'package:bookspire/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Expanded(
              child: CustomButtom(
            text: "Free",
            onPressed: () async {
              final Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);

              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                throw 'Could not launch $url';
              }
            },
            backgroundColor: ColorsManager.backGroundMoreLight,
            textStyle: Styles.stylesemiBoldText18ButomRoboto,
            borderColor: ColorsManager.yellow,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.r),
              bottomLeft: Radius.circular(10.r),
            ),
          )),
          Expanded(
              child: CustomButtom(
            text: getText(bookModel),
            onPressed: () {},
            backgroundColor: ColorsManager.yellow,
            textStyle: Styles.stylesemiBoldText18ButomRoboto.copyWith(
              color: ColorsManager.backGroundMoreLight,
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.r),
              bottomRight: Radius.circular(10.r),
            ),
          )),
        ],
      ),
    );
  }
}
String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return "Not Available";
  } else {
    return "Preview"; 
  }
}
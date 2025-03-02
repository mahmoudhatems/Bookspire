import 'package:bookspire/core/utils/colors.dart';
import 'package:bookspire/core/utils/styles.dart';
import 'package:bookspire/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(
                    child: CustomButtom(
                  text: "19.99 \$",
                  onPressed: () {},
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
                  text: " Free Preview",
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
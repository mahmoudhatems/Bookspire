
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.backgroundColor,
      required this.textStyle,
      this.borderColor,
     required this.borderRadius});
  final String text;
  final Function() onPressed;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Color? borderColor;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor, //ColorsManager.gold,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: BorderSide(color: borderColor ?? Colors.transparent),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        onPressed: onPressed, //() {},
        child: Text(
          text,
          style: textStyle, //Styles.stylesemiBoldText20ButomRoboto,
        ),
      ),
    );
  }
}

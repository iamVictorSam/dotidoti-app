import 'package:dotidoti_app/presentation/helper/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BorderBtn extends StatelessWidget {
  final Color color, textColor;
  final String text;
  final Function() press;
  const BorderBtn(
      {Key? key,
      this.color = kPrimary,
      this.textColor = kPrimary,
      this.text = 'text',
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          // color: color,
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  fontSize: 16.sp)),
        ),
      ),
    );
  }
}

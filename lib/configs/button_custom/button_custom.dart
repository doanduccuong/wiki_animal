import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';

import '../colors.dart';

class ButttonCustom extends StatelessWidget {
  ButttonCustom(
      {Key? key,
      required this.title,
      this.pushScreen,
      this.backgroundColor,
      this.boderColor,
      this.width,
      this.insideTextColor})
      : super(key: key);
  String title;
  String? pushScreen;
  Color? backgroundColor;
  Color? insideTextColor;
  Color? boderColor;
  double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pushScreen!);
      },
      child: Container(
        height: 47.h,
        width: 315.w,
        child: Align(
          alignment: Alignment.center,
          child: TextNormal(
            title: title,
            size: 14.sp,
            height: 1.63.h,
            fontWeight: FontWeight.w500,
            colors: insideTextColor ?? AppColors.wPrimaryColor,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color:  boderColor??Colors.transparent,
            width: width ?? 2.w,
          ),
          color: backgroundColor ?? AppColors.fThirdColor,
          borderRadius: BorderRadius.circular(40.0.r),
        ),
      ),
    );
  }
}

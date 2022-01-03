import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({Key? key, required this.labelText}) : super(key: key);
  String labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 30.w,right: 31.5.w),
      child: TextField(
        decoration: InputDecoration(
          labelStyle: TextStyle(
            color: AppColors.eThirdColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            height: 1.63.h,
            fontFamily: 'Poppins',
          ),
          labelText: labelText,
        ),
      ),
    );
  }
}
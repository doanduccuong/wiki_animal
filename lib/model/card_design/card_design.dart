import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wiki_animal/ui/components/text/text_bold.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';

import '../../configs/colors.dart';

class CardDesign extends StatelessWidget {
  CardDesign(
      {Key? key, required this.title, required this.name, required this.image})
      : super(key: key);
  final String title;
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(8.0),
      child: Card(
        child: InkWell(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            width: 315.w,
            height: 101.h,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextNormal(
                      colors: AppColors.eThirdColor,
                      title: title,
                      fontWeight: FontWeight.w500,
                      size: 12.sp,
                      height: 1.63.h,
                    ),
                    TextBold(
                        title: name,
                        colors: AppColors.eThirdColor,
                        size: 24.sp,
                        height: 1.63.h)
                  ],
                ),
                const Spacer(),
                Image.asset(image),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

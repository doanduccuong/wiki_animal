import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wiki_animal/ui/components/text/text_bold.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';
import '../../configs/colors.dart';

class CardDesign extends StatelessWidget {
  CardDesign(
      {Key? key,
      required this.title,
      required this.name,
      required this.image,
      required this.pushScreen})
      : super(key: key);
  final String title;
  final String name;
  final String image;
  final String pushScreen;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 26.h),
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, pushScreen);
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            width: 315.w,
            height: 101.h,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 31.w, top: 25.h, bottom: 17.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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

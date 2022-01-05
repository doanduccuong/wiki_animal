import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wiki_animal/configs/button_custom/button_custom.dart';
import 'package:wiki_animal/configs/colors.dart';
import 'package:wiki_animal/configs/images.dart';
import 'package:wiki_animal/ui/components/text/text_bold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(AppImages.imgEllipse2),
          Padding(
            padding: EdgeInsets.only(top: 58.5.h, left: 28.w),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 115.w,
                  ),
                  child: TextBold(
                      title: 'Elephant',
                      colors: AppColors.eThirdColor,
                      size: 28.sp,
                      height: 1.22.h),
                ),
                SvgPicture.asset(AppImages.imgVector),
                SizedBox(
                  width: 36.w,
                ),
                const Icon(
                  Icons.add,
                  color: AppColors.eThirdColor,
                ),
              ],
            ),
          ),
          Theme(
            data: ThemeData(highlightColor: AppColors.eThirdColor),
            child: Scrollbar(
              radius: Radius.circular(4.sp),
              isAlwaysShown: true,
              child: Container(
                width: 350.w,
                height: 241.h,
                padding: EdgeInsets.only(top: 41.h, left: 32.w, right: 54.w),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
                  child: TextNormal(
                    title:
                        "Elephants are mammals of the family Elephantidae and the largest existing land animals. Three species are \n \n \n currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant \n\n Elephantidae is the only surviving family of the order Proboscidea; extinct members include the mastodons.",
                    size: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.12.h,
                    colors: AppColors.hThirdColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Center(child: ButttonCustom(title: 'Get Started')),
        ],
      ),
    );
  }
}

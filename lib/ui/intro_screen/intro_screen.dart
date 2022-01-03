import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wiki_animal/configs/button_custom/button_custom.dart';
import 'package:wiki_animal/configs/colors.dart';
import 'package:wiki_animal/configs/constants/constants.dart';
import 'package:wiki_animal/configs/images.dart';
import 'package:wiki_animal/ui/components/text/text_bold.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppImages.imgEllipse1),
          ),
          Padding(
            padding: EdgeInsets.only(top: 117.5.h, left: 79.h, right: 80.0.h),
            child: TextBold(
              title: 'Animal Wiki',
              colors: AppColors.eThirdColor,
              size: 36.sp,
              height: 1.22.h,
              font: 'Montserrat',
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 115.h),
            padding: EdgeInsets.only(left: 43.w, right: 44.w),
            width: 288.w,
            height: 58.h,
            child: TextNormal(
              colors: AppColors.eThirdColor,
              title: 'What do you know about the animal Kingdom ?',
              size: 18.sp,
              height: 1.63.h,
              isCenter: true,
            ),
          ),
          ButttonCustom(title: 'Get Started',pushScreen: Constants.logInScreen,),
        ],
      ),
    );
  }
}


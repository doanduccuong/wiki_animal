import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wiki_animal/configs/button_custom/button_custom.dart';
import 'package:wiki_animal/configs/colors.dart';
import 'package:wiki_animal/configs/constants/constants.dart';
import 'package:wiki_animal/configs/images.dart';
import 'package:wiki_animal/configs/text_field/text_field.dart';
import 'package:wiki_animal/ui/components/text/text_bold.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';
import 'package:wiki_animal/ui/user_screen/user_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppImages.imgEllipse1),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.w,
              right: 172.w,
              top: 10.5.h,
              //bottom: 28.h,
            ),
            child: TextBold(
                title: 'Welcom\nBack!',
                colors: AppColors.eThirdColor,
                size: 36.sp,
                height: 1.22.h,
                font: 'Montserrat'),
          ),
          TextFieldCustom(
            labelText: 'Email',
          ),
          SizedBox(
            height: 40.h,
          ),
          TextFieldCustom(labelText: 'Password'),
          Padding(
            padding: EdgeInsets.only(top: 45.h, bottom: 15.h),
            child: ButttonCustom(
              title: 'Login',
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          ButttonCustom(
            title: 'Get Started',
            backgroundColor: AppColors.wPrimaryColor,
            insideTextColor: AppColors.eThirdColor,
            boderColor: AppColors.eThirdColor,
            pushScreen: Constants.userScreen,
          ),
          TextNormal(
            title: 'Forget the password?',
            colors: AppColors.eThirdColor,
            size: 14.sp,
            height: 1.63.h,
          ),
        ],
      ),
    );
  }
}

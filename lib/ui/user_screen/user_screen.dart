import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:wiki_animal/configs/colors.dart';
import 'package:wiki_animal/configs/constants/constants.dart';
import 'package:wiki_animal/configs/images.dart';
import 'package:wiki_animal/controller/card_filter_controller.dart';
import 'package:wiki_animal/model/card_design/card_design.dart';
import 'package:wiki_animal/model/card_filter/card_filter.dart';
import 'package:wiki_animal/ui/components/text/text_bold.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';

class UserScreen extends StatelessWidget {
  UserScreen({Key? key}) : super(key: key);

  //final CardFilterController controller = Get.put(CardFilterController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //padding: EdgeInsets.only(top: 43.h),
            Column(
              children: [
                SvgPicture.asset(AppImages.imgNav),
                Padding(
                  padding: EdgeInsets.only(
                    right: 175.w,
                    top: 24.h,
                  ),
                  child: TextBold(
                    title: 'Animal Wiki',
                    colors: AppColors.eThirdColor,
                    size: 28.sp,
                    height: 1.22.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: SizedBox(
                    height: 27.h,
                    child: TaskBarBuilder(),
                  ),
                ),
              ],
            ),

            Expanded(
              child: Container(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 50.h),
                  shrinkWrap: true,
                  itemCount: Constants.contentCard.length,
                  itemBuilder: (context, index) {
                    return CardDesign(
                      title: Constants.contentCard[index].title,
                      name: Constants.contentCard[index].name,
                      image: Constants.contentCard[index].image,
                      pushScreen: Constants.contentCard[index].pushScreen,
                    );
                  },
                ),
                margin: EdgeInsets.only(top: 43.h),
                color: AppColors.fThirdColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// CardFilter(
// title: Constants.contentList[index].title,
// color: Constants.contentList[index].color,
// );
// Padding(
// padding: EdgeInsets.only(right: 19.0.w),
// child: InkWell(
// highlightColor: Colors.transparent,
// splashColor: Colors.transparent,
// onTap: () {
// setState(
// () {
// //hasBeenPressed[index]=!hasBeenPressed[index];
// selected = hasBeenPressed[index];
// },
// );
// },
// child: Container(
// //margin: EdgeInsets.only(right: 19.w),
// width: 95.w,
// decoration: BoxDecoration(
// color: selected == hasBeenPressed[index]
// ? AppColors.wPrimaryColor
//     : AppColors.eThirdColor,
// borderRadius: BorderRadius.circular(68.r),
// ),
// alignment: Alignment.center,
// child: TextNormal(
// colors: selected == hasBeenPressed[index]
// ? AppColors.eThirdColor
//     : AppColors.wPrimaryColor,
// title: 'title',
// fontWeight: FontWeight.w500,
// size: 14.sp,
// height: 1.63.h,
// ),
// ),
// ),
// );


import 'package:flutter/material.dart';
import 'package:wiki_animal/configs/colors.dart';
import 'package:wiki_animal/controller/card_filter_controller.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardFilter extends StatelessWidget {
  final CardFilterController controller = Get.put(CardFilterController());
  CardFilter({
    Key? key,
    required this.title,
    this.toggleCheck,
    //this.check = false,
    this.color,
  }) : super(key: key);
  final String title;
  Color? color;
  //bool check;
  Function? toggleCheck;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 19.0.w),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          controller.toggleCheck();
        },
        child: Obx(
          () => Container(
            //margin: EdgeInsets.only(right: 19.w),
            width: 95.w,
            decoration: BoxDecoration(
              color: controller.check.value
                  ? AppColors.wPrimaryColor
                  : AppColors.eThirdColor,
              borderRadius: BorderRadius.circular(68.r),
            ),
            alignment: Alignment.center,
            child: Obx(
              () => TextNormal(
                colors: controller.check.value
                    ? AppColors.eThirdColor
                    : AppColors.wPrimaryColor,
                title: title,
                fontWeight: FontWeight.w500,
                size: 14.sp,
                height: 1.63.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

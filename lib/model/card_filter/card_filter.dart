import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wiki_animal/configs/colors.dart';
import 'package:wiki_animal/configs/constants/constants.dart';
import 'package:wiki_animal/controller/card_filter_controller.dart';
import 'package:wiki_animal/model/card_filter/task_bar_builder.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardFilter extends StatelessWidget {
  CardFilter({
    this.index=0,
    Key? key,
    required this.title,
    //this.check = false,
  }) : super(key: key);
  final String title;
  Color? color;
  int index;
  String ?selected;
  //final CardFilterController controller = Get.put(CardFilterController());

  //CardFilterController controller= Get.put(CardFilterController());

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.only(right: 19.0.w),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          selected=Constants.contentList[index].title;
        },
        child: Container(
          //margin: EdgeInsets.only(right: 19.w),
          width: 95.w,
          decoration: BoxDecoration(
            color: selected==Constants.contentList[index].title
                ? AppColors.wPrimaryColor
                : AppColors.eThirdColor,
            borderRadius: BorderRadius.circular(68.r),
          ),
          alignment: Alignment.center,
          child: TextNormal(
            colors: selected==Constants.contentList[index].title
                ? AppColors.eThirdColor
                : AppColors.wPrimaryColor,
            title: title,
            fontWeight: FontWeight.w500,
            size: 14.sp,
            height: 1.63.h,
          ),
        ),
      ),
    );
  }
}

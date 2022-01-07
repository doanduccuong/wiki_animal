import 'package:flutter/material.dart';
import 'package:wiki_animal/configs/colors.dart';
import 'package:wiki_animal/configs/constants/constants.dart';
import 'package:wiki_animal/ui/components/text/text_normal.dart';

import 'card_filter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TaskBarBuilder extends StatefulWidget {
  const TaskBarBuilder({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskBarBuilder> createState() => _TaskBarBuilderState();
}

class _TaskBarBuilderState extends State<TaskBarBuilder> {
  String selected='';
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: Constants.contentList.length,
      itemBuilder: (context, index)
      {
        return Padding(
          padding: EdgeInsets.only(right: 19.0.w),
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                selected=Constants.contentList[index].title;
              });

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
                title: Constants.contentList[index].title,
                fontWeight: FontWeight.w500,
                size: 14.sp,
                height: 1.63.h,
              ),
            ),
          ),
        );
      },
    );
  }
}
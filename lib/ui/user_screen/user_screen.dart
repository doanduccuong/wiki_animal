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

class UserScreen extends StatelessWidget {
  final CardFilterController controller = Get.put(CardFilterController());
  UserScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 225.h,
            padding: EdgeInsets.only(top: 43.h),
            child: Column(
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
                    child:  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: Constants.contentList.length,
                      itemBuilder: (context,index) {
                        return CardFilter(title: Constants.contentList[index].title, color: Constants.contentList[index].color,);
                      },
                    )
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.h,),
          ListView.builder(
            //scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: Constants.contentCard.length,
            itemBuilder: (context, index) {
              return CardDesign(
                  title: Constants.contentCard[index].title,
                  name: Constants.contentCard[index].name,
                  image: Constants.contentCard[index].image);
            },
          ),
        ],
      ),
    );
  }
}

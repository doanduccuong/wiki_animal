
import 'package:wiki_animal/configs/colors.dart';
import 'package:wiki_animal/configs/images.dart';
import 'package:wiki_animal/model/card_design/card_design.dart';

import 'package:wiki_animal/model/card_filter/card_filter.dart';

class Constants {
  /* Routing Names */
  static const String introScreen = "/intro_screen";
  static const String logInScreen = "/log_in_screen";
  static const String userScreen = "user_screen";
  static List<CardFilter> contentList = [
    CardFilter(title: 'Popular', color: AppColors.eThirdColor,),
    CardFilter(title: 'Mammalians', color: AppColors.wPrimaryColor),
    CardFilter(title: 'Amphbians', color: AppColors.wPrimaryColor),
    CardFilter(title: 'Birds', color: AppColors.wPrimaryColor),
  ];
  static  List<CardDesign> contentCard=[
    CardDesign(title: 'Mammalians', name: 'Lions', image: AppImages.imgLion1),
    CardDesign(title: 'Mammalians', name: 'Tortise', image: AppImages.imgTurtle),
  ];
}

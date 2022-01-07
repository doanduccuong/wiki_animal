import 'package:wiki_animal/configs/colors.dart';
import 'package:wiki_animal/configs/images.dart';
import 'package:wiki_animal/model/card_design/card_design.dart';

import 'package:wiki_animal/model/card_filter/card_filter.dart';

class Constants {
  /* Routing Names */
  static const String introScreen = "/intro_screen";
  static const String logInScreen = "/log_in_screen";
  static const String userScreen = "user_screen";
  static const String detailScreen = "/deail_screen1";
  static List<CardFilter> contentList = [
    CardFilter(title: 'Popular'),
    CardFilter(title: 'Mammalians'),
    CardFilter(title: 'Amphbians'),
    CardFilter(title: 'Birds'),
  ];
  static List<CardDesign> contentCard = [
    CardDesign(
      title: 'Mammalians',
      name: 'Lions',
      image: AppImages.imgLion1,
      pushScreen: Constants.detailScreen,
    ),
    // CardDesign(
    //     title: 'Mammalians', name: 'Tortise', image: AppImages.imgTurtle),
  ];
}

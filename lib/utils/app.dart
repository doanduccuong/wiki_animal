import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wiki_animal/configs/constants/constants.dart';
import 'package:wiki_animal/ui/detail_screen/detail_screen.dart';
import 'package:wiki_animal/ui/intro_screen/intro_screen.dart';
import 'package:wiki_animal/ui/log_in_screen/log_in_screen.dart';
import 'package:wiki_animal/ui/user_screen/user_screen.dart';

class WikiApp extends StatelessWidget {
  const WikiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        title: 'Wiki App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const IntroScreen(),
        routes: {
          Constants.introScreen: (context) => const IntroScreen(),
          Constants.logInScreen: (context) => const LogInScreen(),
          Constants.userScreen: (context) => UserScreen(),
          Constants.detailScreen: (context) => const DetailScreen(),
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rescue2/screens/android_large_five_screen.dart';
import 'package:rescue2/screens/android_large_four_screen.dart';
import 'package:rescue2/screens/android_large_one_screen.dart';
import 'package:rescue2/screens/android_large_seven_screen.dart';
import 'package:rescue2/screens/android_large_six_screen.dart';
import 'package:rescue2/screens/android_large_three_screen.dart';
import 'package:rescue2/screens/app_navigation_screen.dart';
import 'package:rescue2/screens/frame_four_screen.dart';
import 'package:rescue2/screens/frame_three_screen.dart';
import 'package:rescue2/screens/frame_two_screen.dart';
import 'package:rescue2/screens/login_page_five_screen.dart';
import 'package:rescue2/screens/login_page_four_screen.dart';
import 'package:rescue2/screens/login_page_hospital_screen.dart';
import 'package:rescue2/screens/login_page_one_screen.dart';
import 'package:rescue2/screens/login_page_screen.dart';
import 'package:rescue2/screens/login_page_six_screen.dart';
import 'package:rescue2/screens/login_page_three_screen.dart';
import 'package:rescue2/screens/login_page_two_screen.dart';

class AppRoutes {
  static const String loginPageTwoScreen = '/login_page_two_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String androidLargeSixScreen = '/android_large_six_screen';

  static const String androidLargeSevenScreen = '/android_large_seven_screen';

  static const String frameTwoScreen = '/frame_two_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String loginPageFourScreen = '/login_page_four_screen';

  static const String loginPageThreeScreen = '/login_page_three_screen';

  static const String frameThreeScreen = '/frame_three_screen';

  static const String frameFourScreen = '/frame_four_screen';

  static const String loginPageFiveScreen = '/login_page_five_screen';

  static const String loginPageSixScreen = '/login_page_six_screen';

  static const String loginPageOneScreen = '/login_page_one_screen';

  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String loginPageHospitalScreen = '/login_page_hospital_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginPageTwoScreen: (context) => LoginPageTwoScreen(),
    loginPageScreen: (context) => LoginPageScreen(),
    androidLargeSixScreen: (context) => AndroidLargeSixScreen(),
    androidLargeSevenScreen: (context) => AndroidLargeSevenScreen(),
    frameTwoScreen: (context) => FrameTwoScreen(),
    androidLargeFiveScreen: (context) => AndroidLargeFiveScreen(),
    loginPageFourScreen: (context) => LoginPageFourScreen(),
    loginPageThreeScreen: (context) => LoginPageThreeScreen(),
    frameThreeScreen: (context) => FrameThreeScreen(),
    frameFourScreen: (context) => FrameFourScreen(),
    loginPageFiveScreen: (context) => LoginPageFiveScreen(),
    loginPageSixScreen: (context) => LoginPageSixScreen(),
    loginPageOneScreen: (context) => LoginPageOneScreen(),
    androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    androidLargeThreeScreen: (context) => AndroidLargeThreeScreen(),
    androidLargeFourScreen: (context) => AndroidLargeFourScreen(),
    loginPageHospitalScreen: (context) => LoginPageHospitalScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

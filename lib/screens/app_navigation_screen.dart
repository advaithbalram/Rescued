import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login page hospital",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageHospitalScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: const Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: const Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}

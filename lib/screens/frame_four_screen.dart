import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';

class FrameFourScreen extends StatelessWidget {
  const FrameFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Container(
                    decoration: AppDecoration.fillOnPrimary,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 32.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeftBlack900,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 18.h),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          SizedBox(
                              height: 744.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage9744x360,
                                        height: 744.v,
                                        width: 360.h,
                                        alignment: Alignment.center),
                                    _buildLoginForm(context)
                                  ]))
                        ])))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 6.h, top: 207.v, right: 2.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 46.h),
                      child: Text("REQUEST",
                          style: theme.textTheme.displayMedium)),
                  SizedBox(height: 22.v),
                  Padding(
                      padding: EdgeInsets.only(left: 90.h),
                      child:
                          Text("SENT ", style: theme.textTheme.displayMedium)),
                  SizedBox(height: 24.v),
                  Text("SUCCESFULLY",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayMedium),
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.center,
                      child: Text("!!!!",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.displayMedium))
                ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

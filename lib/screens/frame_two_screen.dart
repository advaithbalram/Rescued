import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';

class FrameTwoScreen extends StatelessWidget {
  const FrameTwoScreen({Key? key}) : super(key: key);

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
                          SizedBox(height: 24.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowLeftBlack900,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 6.h),
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          SizedBox(height: 8.v),
                          SizedBox(
                              height: 744.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage9744x360,
                                        height: 744.v,
                                        width: 360.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                28.h, 94.v, 45.h, 34.v),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 7.h),
                                                          child: Text(
                                                              "ENTER DETAILS:"
                                                                  .toUpperCase(),
                                                              style: CustomTextStyles
                                                                  .headlineLargeRobotoBlack900))),
                                                  const Spacer(flex: 39),
                                                  SizedBox(
                                                      width: 286.h,
                                                      child: Text(
                                                          "BLOOD GROUP:O+\nPATIENT NAME:JOHN DOE\nDATE:5-11-2023\nHOSPITAL:SUNRISE HOSPITAL,KOCHI\nCONTACT NUMBER:999999999\nNO OF UNITS:3\nTHALUK:KAKANAD\nDISTRICT:\nTIME:",
                                                          maxLines: 10,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .titleLargeRobotoBlack900_1)),
                                                  const Spacer(flex: 60),
                                                  CustomElevatedButton(
                                                      text: "SENT REQUEST"
                                                          .toUpperCase(),
                                                      margin: EdgeInsets.only(
                                                          left: 35.h,
                                                          right: 50.h),
                                                      style: CustomButtonStyles
                                                          .outlineBlack,
                                                      buttonTextStyle:
                                                          CustomTextStyles
                                                              .titleSmallOnPrimary)
                                                ])))
                                  ]))
                        ])))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

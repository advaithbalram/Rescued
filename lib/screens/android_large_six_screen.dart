import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue2/widgets/app_bar/appbar_title.dart';
import 'package:rescue2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rescue2/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';

class AndroidLargeSixScreen extends StatelessWidget {
  const AndroidLargeSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 744.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 744.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage9,
                        height: 744.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8.h, 164.v, 8.h, 79.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildImageTopA(context),
                              const Spacer(),
                              CustomElevatedButton(
                                width: 171.h,
                                text: "NEW REQUEST".toUpperCase(),
                                leftIcon: Container(
                                  margin: EdgeInsets.only(right: 8.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFloatingicon,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                ),
                                style: CustomButtonStyles.outlineBlack,
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallOnPrimary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildSeventeen(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 13.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "Profile",
        margin: EdgeInsets.only(left: 33.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.only(
            left: 18.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgShare,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchOnprimary,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 16.v,
            right: 34.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildImageTopA(BuildContext context) {
    return Container(
      width: 344.h,
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgWarning,
                height: 36.v,
                width: 39.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 7.v,
                  bottom: 4.v,
                ),
                child: Text(
                  "1.REQUEST SENT ",
                  style: CustomTextStyles.titleLargeRobotoBlack900,
                ),
              ),
            ],
          ),
          SizedBox(height: 65.v),
          Container(
            width: 243.h,
            margin: EdgeInsets.only(
              left: 8.h,
              right: 76.h,
            ),
            child: Text(
              "DETAILS SENT:\nBLOOD GROUP:O+\nPATIENT NAME:JOHN DOE\nDATE:5-11-2023\nHOSPITAL:SUNRISE HOSPITAL,KOCHI\nCONTACT NUMBER:999999999\nNO OF UNITS:3\nTHALUK:KAKANAD\nDISTRICT:\nTIME:",
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.43,
              ),
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          right: 7.h,
          bottom: 696.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 2.h,
          vertical: 15.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                "ALERTS".toUpperCase(),
                textAlign: TextAlign.center,
                style: theme.textTheme.titleSmall,
              ),
            ),
            const Spacer(
              flex: 63,
            ),
            Text(
              "SENT".toUpperCase(),
              style: theme.textTheme.titleSmall,
            ),
            const Spacer(
              flex: 36,
            ),
            Text(
              "COmmunity".toUpperCase(),
              style: theme.textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}

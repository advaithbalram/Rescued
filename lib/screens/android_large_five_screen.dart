import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue2/widgets/app_bar/appbar_title.dart';
import 'package:rescue2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rescue2/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';

class AndroidLargeFiveScreen extends StatelessWidget {
  const AndroidLargeFiveScreen({Key? key})
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
                          padding: EdgeInsets.fromLTRB(8.h, 120.v, 8.h, 79.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgWarning,
                                height: 36.v,
                                width: 39.h,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 8.h),
                              ),
                              SizedBox(height: 50.v),
                              _buildImageTopA(context),
                              Spacer(),
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
                                onPressed: () {},
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
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 64.h),
            child: Text(
              "NOTICE!!!",
              style: CustomTextStyles.titleLargeRobotoBlack900,
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 172.h,
            margin: EdgeInsets.only(left: 64.h),
            child: Text(
              "YOUR REQUEST HAS BEEN ACCEPTED BY USER1",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.43,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "HAS THE  REQUEST BEEN CLEARED ",
              style: CustomTextStyles.bodyMediumBlack900,
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Text(
                    "ACCEPT".toUpperCase(),
                    style: CustomTextStyles.titleSmallGreenA700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "REJECT".toUpperCase(),
                    style: CustomTextStyles.titleSmallErrorContainer,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgNotificationBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
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
            Spacer(
              flex: 63,
            ),
            Text(
              "SENT".toUpperCase(),
              style: theme.textTheme.titleSmall,
            ),
            Spacer(
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

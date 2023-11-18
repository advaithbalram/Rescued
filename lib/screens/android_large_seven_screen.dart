import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue2/widgets/app_bar/appbar_title.dart';
import 'package:rescue2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rescue2/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';

class AndroidLargeSevenScreen extends StatelessWidget {
  const AndroidLargeSevenScreen({Key? key})
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
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage9,
                        height: 744.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(6.h, 89.v, 10.h, 79.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildBloodDonationCamp(context),
                              const Spacer(),
                              CustomElevatedButton(
                                width: 171.h,
                                text: "NEW REQUEST".toUpperCase(),
                                margin: EdgeInsets.only(left: 72.h),
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
              _buildTabs(context),
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
  Widget _buildBloodDonationCamp(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "BLOOD DONATION CAMP!!!",
              style: CustomTextStyles.titleLargeRobotoBlack900,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "EDAPALLY",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 30.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage10,
            height: 194.v,
            width: 344.h,
          ),
          SizedBox(height: 41.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgNotificationBlack900,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 24.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabs(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          right: 2.h,
          bottom: 696.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 15.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "ALERTS".toUpperCase(),
              style: theme.textTheme.titleSmall,
            ),
            const Spacer(
              flex: 62,
            ),
            Text(
              "SENT".toUpperCase(),
              style: theme.textTheme.titleSmall,
            ),
            const Spacer(
              flex: 37,
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

import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/screens/gridframethree_item_widget.dart';
import 'package:rescue2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue2/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';

class FrameThreeScreen extends StatelessWidget {
  const FrameThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Container(
                    decoration: AppDecoration.fillOnPrimary,
                    child: Column(children: [
                      SizedBox(height: 24.v),
                      _buildAppBar(context),
                      SizedBox(height: 8.v),
                      SizedBox(
                          height: 744.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage9744x360,
                                height: 744.v,
                                width: 360.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        31.h, 48.v, 28.h, 34.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              width: 222.h,
                                              margin: EdgeInsets.only(
                                                  left: 37.h, right: 41.h),
                                              child: Text(
                                                  "CHOOSE\n\nAREA\n\nOF LOCATION:"
                                                      .toUpperCase(),
                                                  maxLines: 6,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .headlineLargeRobotoBlack900)),
                                          SizedBox(height: 96.v),
                                          _buildGridFrameThree(context),
                                          const Spacer(),
                                          CustomElevatedButton(
                                              width: 201.h,
                                              text:
                                                  "SENT REQUEST".toUpperCase(),
                                              margin:
                                                  EdgeInsets.only(left: 32.h),
                                              style: CustomButtonStyles
                                                  .outlineBlack,
                                              buttonTextStyle: CustomTextStyles
                                                  .titleSmallOnPrimary,
                                              alignment: Alignment.centerLeft)
                                        ])))
                          ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 24.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 6.h, right: 330.h),
            onTap: () {
              onTapArrowLeft(context);
            }));
  }

  /// Section Widget
  Widget _buildGridFrameThree(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 98.v,
            crossAxisCount: 2,
            mainAxisSpacing: 29.h,
            crossAxisSpacing: 29.h),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return const GridframethreeItemWidget();
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

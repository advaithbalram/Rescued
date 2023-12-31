import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue2/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';
import 'package:rescue2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageThreeScreen extends StatelessWidget {
  LoginPageThreeScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    boxShadow: [
                      BoxShadow(
                          color: appTheme.black900.withOpacity(0.25),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: const Offset(0, 4))
                    ],
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup72),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 12.v),
                      _buildSixtyFive(context),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 29.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 18.v),
                                Container(
                                    height: 136.v,
                                    width: 138.h,
                                    margin: EdgeInsets.only(left: 83.h),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              height: 128.v,
                                              width: 132.h,
                                              alignment:
                                                  Alignment.bottomCenter),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMaskGroup,
                                              height: 128.v,
                                              width: 132.h,
                                              alignment: Alignment.topLeft)
                                        ])),
                                SizedBox(height: 28.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("ORGANISATION NAME",
                                        style: theme.textTheme.titleLarge)),
                                SizedBox(height: 7.v),
                                _buildName(context),
                                SizedBox(height: 19.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Password",
                                        style: theme.textTheme.titleLarge)),
                                SizedBox(height: 7.v),
                                _buildPassword(context),
                                SizedBox(height: 19.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Contact Number",
                                        style: theme.textTheme.titleLarge)),
                                SizedBox(height: 7.v),
                                Container(
                                    height: 57.v,
                                    width: 316.h,
                                    decoration: BoxDecoration(
                                        color:
                                            theme.colorScheme.primaryContainer,
                                        borderRadius:
                                            BorderRadius.circular(28.h),
                                        border: Border.all(
                                            color: appTheme.black900,
                                            width: 1.h))),
                                SizedBox(height: 19.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Address:",
                                        style: theme.textTheme.titleLarge)),
                                SizedBox(height: 7.v),
                                _buildAddress(context)
                              ]))
                    ]))),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  Widget _buildSixtyFive(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 62.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomAppBar(
                  height: 75.v,
                  leadingWidth: double.maxFinite,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeft,
                      margin: EdgeInsets.only(right: 323.h),
                      onTap: () {
                        onTapArrowLeft(context);
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 36.v),
                  child: Text("Create Profile",
                      style: theme.textTheme.headlineLarge))
            ])));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(controller: nameController);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController, obscureText: true);
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return CustomTextFormField(
        controller: addressController, textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        height: 55.v, text: "NEXT", style: CustomButtonStyles);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

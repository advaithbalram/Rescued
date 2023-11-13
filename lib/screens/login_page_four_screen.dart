import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue2/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';
import 'package:rescue2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageFourScreen extends StatelessWidget {
  LoginPageFourScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

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
                          offset: Offset(0, 4))
                    ],
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup72),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 12.v),
                      _buildSeventyOne(context),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 29.v),
                          child: Column(children: [
                            SizedBox(height: 18.v),
                            SizedBox(
                                height: 136.v,
                                width: 135.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imageNotFound,
                                          height: 128.v,
                                          width: 132.h,
                                          alignment: Alignment.bottomCenter),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgMaskGroup,
                                          height: 128.v,
                                          width: 132.h,
                                          alignment: Alignment.topCenter)
                                    ])),
                            SizedBox(height: 30.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Registration Number:",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 5.v),
                            _buildEditText(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Email",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildEmail(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Autharized Personel",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildEditText1(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Authorized Personnel Number",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildEditText2(context)
                          ]))
                    ]))),
            bottomNavigationBar: _buildFinish(context)));
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
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
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(controller: editTextController);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(controller: emailController);
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return CustomTextFormField(controller: editTextController1);
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return CustomTextFormField(
        controller: editTextController2, textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildFinish(BuildContext context) {
    return CustomElevatedButton(
      height: 55.v,
      text: "FINISH",
      style: CustomButtonStyles.outlineBlackTL24,
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

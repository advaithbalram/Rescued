import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/screens/login_page_one_screen.dart';
import 'package:rescue2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rescue2/widgets/app_bar/custom_app_bar.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';
import 'package:rescue2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  TextEditingController editText3Controller = TextEditingController();

  TextEditingController editText4Controller = TextEditingController();

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
                      _buildFortyFive(context),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 29.v),
                          child: Column(children: [
                            SizedBox(height: 26.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgMaskGroup,
                                height: 128.v,
                                width: 132.h),
                            SizedBox(height: 28.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("District",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildEditText1(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Thaluk",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildEditText2(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Email",
                                        style: theme.textTheme.titleLarge))),
                            SizedBox(height: 7.v),
                            _buildEditText3(context),
                            SizedBox(height: 19.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text("Gender ",
                                        style: theme.textTheme.titleLarge))),
                            _buildEditText4(context),
                          ]))
                    ]))),
            bottomNavigationBar: _buildNextButton(context)));
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomAppBar(
                  height: 10.v,
                  leadingWidth: double.maxFinite,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowLeft,
                      margin: EdgeInsets.only(right: 10.h),
                      onTap: () {
                        onTapArrowLeft(context);
                      })),
              Padding(
                  padding: EdgeInsets.only(top: 16.v),
                  child: Text("Create Profile",
                      style: theme.textTheme.headlineLarge))
            ])));
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return CustomTextFormField(controller: editText1Controller);
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return CustomTextFormField(controller: editText2Controller);
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return CustomTextFormField(
        controller: editText3Controller, textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildEditText4(BuildContext context) {
    return CustomTextFormField(
        controller: editText3Controller, textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      height: 55.v,
      text: "NEXT",
      style: CustomButtonStyles.outlineBlackTL24,
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => LoginPageOneScreen())));
      },
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

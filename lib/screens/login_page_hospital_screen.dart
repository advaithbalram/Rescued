import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';
import 'package:rescue2/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LoginPageHospitalScreen extends StatelessWidget {
  LoginPageHospitalScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildLoginPageHospitalStack(context),
                SizedBox(height: 58.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 26.h,
                    right: 18.h,
                  ),
                  child: CustomTextFormField(
                    controller: nameController,
                    hintText: "ORGANISATION NAME",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 18.v,
                    ),
                  ),
                ),
                SizedBox(height: 31.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 26.h,
                    right: 18.h,
                  ),
                  child: CustomTextFormField(
                    controller: passwordController,
                    hintText: "PASSWORD",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 14.v, 20.h, 19.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgEye,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 57.v,
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 14.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Forgot Password?",
                    style: CustomTextStyles.titleMediumPink80087,
                  ),
                ),
                SizedBox(height: 62.v),
                CustomElevatedButton(
                  height: 55.v,
                  text: "LOGIN",
                  style: CustomButtonStyles.outlineBlackTL24,
                ),
                SizedBox(height: 30.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don’t have an account?",
                        style: CustomTextStyles.bodyLargeBlack900,
                      ),
                      TextSpan(
                        text: "SIGN UP",
                        style: CustomTextStyles.titleMediumOnPrimaryContainer,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginPageHospitalStack(BuildContext context) {
    return SizedBox(
      height: 364.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 261.v,
              width: 359.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage3261x359,
                    height: 261.v,
                    width: 359.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "WELCOME",
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 161.v,
              width: 176.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 161.v,
                      width: 176.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray5001,
                        borderRadius: BorderRadius.circular(
                          88.h,
                        ),
                        border: Border.all(
                          color: theme.colorScheme.onPrimaryContainer,
                          width: 3.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage2,
                    height: 135.v,
                    width: 99.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

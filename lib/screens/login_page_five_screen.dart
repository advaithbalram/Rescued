import 'package:flutter/material.dart';
import 'package:rescue2/core/app_export.dart';
import 'package:rescue2/screens/login_page_six_screen.dart';
import 'package:rescue2/widgets/custom_elevated_button.dart';
import 'package:rescue2/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LoginPageFiveScreen extends StatelessWidget {
  LoginPageFiveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController priceController = TextEditingController();

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
                _buildWelcomeStack(context),
                SizedBox(height: 58.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 26.h,
                    right: 18.h,
                  ),
                  child: CustomTextFormField(
                    controller: priceController,
                    hintText: "USERNAME",
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 26.h,
                      vertical: 18.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineBlackTL28,
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
                    borderDecoration: TextFormFieldStyleHelper.outlineBlackTL28,
                  ),
                ),
                SizedBox(height: 14.v),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Forgot Password?",
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
                ),
                SizedBox(height: 40.v),
                CustomElevatedButton(
                  height: 55.v,
                  text: "LOGIN",
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
                SizedBox(height: 10.v),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => LoginPageSixScreen())));
                    },
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "Don't have an account?",
                          style: Theme.of(context).textTheme.bodyMedium),
                      const TextSpan(text: " SIGN UP")
                    ]))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeStack(BuildContext context) {
    return const NewWidget();
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

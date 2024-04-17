import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMe = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: 382.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 33.h,
                  vertical: 54.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 17.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1,
                      height: 122.v,
                      width: 278.h,
                      radius: BorderRadius.circular(
                        38.h,
                      ),
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                    SizedBox(height: 35.v),
                    Container(
                      margin: EdgeInsets.only(right: 30.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.h,
                        vertical: 13.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer,
                      child: Column(
                        children: [
                          SizedBox(height: 8.v),
                          SizedBox(
                            width: 220.h,
                            child: Text(
                              "Welcome to Rwanda Bimedical Center (RBC)",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 71.v),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "Welcome Back, please login into your account",
                        style:
                            CustomTextStyles.bodyMediumInterSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 46.v),
                    _buildEmail(context),
                    SizedBox(height: 22.v),
                    _buildPassword(context),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(right: 21.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildRememberMe(context),
                          Text(
                            "Forgot password?",
                            style: CustomTextStyles.bodyLargeInterBluegray800
                                .copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 19.v),
                    CustomElevatedButton(
                      text: "Login",
                      margin: EdgeInsets.only(right: 22.h),
                      buttonTextStyle:
                          CustomTextStyles.titleMediumInterWhiteA700,
                      onPressed: () {
                        onTapLogin(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: CustomTextStyles.titleMediumInterOnSecondaryContainer,
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: CustomTextFormField(
              controller: emailController,
              hintText: "quizerahubert@gmail.com",
              textInputType: TextInputType.emailAddress,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: CustomTextStyles.titleMediumInterBluegray800,
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: CustomTextFormField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.v),
      child: CustomCheckboxButton(
        text: "Remember me",
        value: rememberMe,
        onChange: (value) {
          rememberMe = value;
        },
      ),
    );
  }

  /// Navigates to the conversionOutputScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.conversionOutputScreen);
  }
}

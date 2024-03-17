import 'package:almohsen_dashbourd_uikit/core/utils/validation_functions.dart';
import 'package:almohsen_dashbourd_uikit/widgets/custom_text_form_field.dart';
import 'package:almohsen_dashbourd_uikit/widgets/custom_elevated_button.dart';
import 'package:almohsen_dashbourd_uikit/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_dashbourd_uikit/core/app_export.dart';
import 'controller/login_controller.dart';
import 'package:almohsen_dashbourd_uikit/domain/facebookauth/facebook_auth_helper.dart';
import 'package:almohsen_dashbourd_uikit/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: 768.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage,
                                      height: 287.v,
                                      width: 375.h,
                                      alignment: Alignment.topCenter),
                                  _buildLoginSection()
                                ])))))));
  }

  /// Section Widget
  Widget _buildSocialButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 58.v,
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 20.v),
          decoration: AppDecoration.fillLightBlue
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgFacebook,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.centerLeft,
              onTap: () {
                onTapImgFacebook();
              })),
      Container(
          height: 58.v,
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 20.v),
          decoration: AppDecoration.fillOnPrimary
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.centerLeft)),
      Container(
          height: 58.v,
          width: 99.h,
          padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 18.v),
          decoration: AppDecoration.outlineGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgGoogle,
              height: 18.adaptSize,
              width: 18.adaptSize,
              alignment: Alignment.centerLeft,
              onTap: () {
                onTapImgGoogle();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildEmailSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr.toUpperCase(), style: theme.textTheme.labelLarge),
      SizedBox(height: 12.v),
      CustomTextFormField(
          controller: controller.emailController,
          hintText: "lbl_user_mail_com".tr,
          textInputType: TextInputType.emailAddress,
          suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 15.h, 15.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 18.adaptSize,
                  width: 18.adaptSize)),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          })
    ]);
  }

  /// Section Widget
  Widget _buildLoginSection() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 39.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL32),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("lbl_welcome_back".tr,
                      style: theme.textTheme.titleLarge)),
              SizedBox(height: 14.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("msg_login_to_continue".tr,
                      style: CustomTextStyles.titleSmallBluegray400)),
              SizedBox(height: 28.v),
              _buildSocialButtons(),
              SizedBox(height: 21.v),
              Text("msg_or_connect_with".tr, style: theme.textTheme.bodySmall),
              SizedBox(height: 31.v),
              _buildEmailSection(),
              SizedBox(height: 20.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("lbl_password".tr.toUpperCase(),
                      style: theme.textTheme.labelLarge)),
              SizedBox(height: 12.v),
              Obx(() => CustomTextFormField(
                  controller: controller.passwordController,
                  hintText: "lbl_password_123".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: InkWell(
                      onTap: () {
                        controller.isShowPassword.value =
                            !controller.isShowPassword.value;
                      },
                      child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgUeye,
                              height: 24.adaptSize,
                              width: 24.adaptSize))),
                  suffixConstraints: BoxConstraints(maxHeight: 48.v),
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: controller.isShowPassword.value)),
              SizedBox(height: 21.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text("msg_forgot_password".tr,
                      style: CustomTextStyles.bodyMediumPrimary)),
              SizedBox(height: 19.v),
              CustomElevatedButton(
                  height: 58.v,
                  text: "lbl_login".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700Bold,
                  onPressed: () {
                    onTapLogin();
                  }),
              SizedBox(height: 18.v),
              CustomOutlinedButton(
                  text: "msg_create_an_account".tr,
                  buttonStyle: CustomButtonStyles.outlineGray,
                  onPressed: () {
                    onTapCreateAnAccount();
                  }),
              SizedBox(height: 16.v)
            ])));
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapCreateAnAccount() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}

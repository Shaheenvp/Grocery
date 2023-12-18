import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/core/utils/validation_functions.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';
import 'package:mohammed_s_application12/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 56.v),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        SizedBox(
                            height: 308.v,
                            width: 266.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                            SizedBox(
                              child: Image(image: AssetImage('assets/images/Group 2.png')
                                    // CustomImageView(
                                    //     imagePath: ImageConstant.imgLogo1,
                                    //     height: 202.v,
                                    //     width: 158.h,
                                    //     alignment: Alignment.topCenter),
                                    // CustomImageView(
                                    //     imagePath: ImageConstant.imgPureOrganic1,
                                    //     height: 212.v,
                                    //     width: 266.h,
                                    //     alignment: Alignment.bottomCenter)
                                  ,
                            ))
                                ])),
                        SizedBox(height: 20.v),
                        CustomTextFormField(
                            controller: controller.userNameController,
                            hintText: "lbl_username".tr,
                            prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(18.h, 16.v, 6.h, 16.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgUser,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize)),
                            prefixConstraints: BoxConstraints(maxHeight: 50.v),
                            validator: (value) {
                              if (!isText(value)) {
                                return "err_msg_please_enter_valid_text".tr;
                              }
                              return null;
                            },
                            contentPadding: EdgeInsets.only(
                                top: 13.v, right: 30.h, bottom: 13.v)),
                        SizedBox(height: 23.v),
                        Obx(() => CustomTextFormField(
                            controller: controller.passwordController,
                            hintText: "lbl_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(19.h, 16.v, 6.h, 16.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgLock,
                                    height: 18.v,
                                    width: 17.h)),
                            prefixConstraints: BoxConstraints(maxHeight: 50.v),
                            suffix: InkWell(
                                onTap: () {
                                  controller.isShowPassword.value =
                                      !controller.isShowPassword.value;
                                },
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 18.v, 20.h, 18.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEyeoff,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize))),
                            suffixConstraints: BoxConstraints(maxHeight: 50.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: controller.isShowPassword.value,
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 13.v))),
                        SizedBox(height: 3.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("msg_forgot_password".tr,
                                style: theme.textTheme.bodyMedium)),
                        SizedBox(height: 26.v),
                        CustomElevatedButton(
                            height: 50.v,
                            text: "lbl_login".tr,
                            onPressed: () {
                              onTapLogin();
                            }),
                        SizedBox(height: 13.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("msg_don_t_have_an_account".tr,
                                  style: CustomTextStyles.titleMedium18),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtSignUP();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 5.h, top: 3.v, bottom: 2.v),
                                      child: Text("lbl_sign_up".tr,
                                          style: CustomTextStyles
                                              .titleSmallPrimary)))
                            ]),
                        SizedBox(height: 9.v),
                        Text("lbl_or".tr, style: theme.textTheme.bodyLarge),
                        SizedBox(height: 10.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 36.v,
                                  width: 48.h,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomIconButton(
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            alignment: Alignment.center,
                                            child: CustomImageView()),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgR21,
                                            height: 36.v,
                                            width: 48.h,
                                            alignment: Alignment.center)
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 17.h, top: 3.v, bottom: 3.v),
                                  child: CustomIconButton(
                                      height: 30.adaptSize,
                                      width: 30.adaptSize,
                                      padding: EdgeInsets.all(3.h),
                                      decoration:
                                          IconButtonStyleHelper.fillLightGreen,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgFacebook)))
                            ]),
                        SizedBox(height: 5.v)
                      ]),
                    )))));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Navigates to the signupOneScreen when the action is triggered.
  onTapTxtSignUP() {
    Get.toNamed(
      AppRoutes.signupOneScreen,
    );
  }
}

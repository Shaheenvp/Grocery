import 'controller/signup_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/core/utils/validation_functions.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application12/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupOneScreen extends GetWidget<SignupOneController> {
  SignupOneScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v),
                    child: Column(children: [
                      _buildLoginForm(),
                      _buildUserProfile(),
                      SizedBox(height: 20.v),
                      _buildPasswordField(),
                      SizedBox(height: 20.v),
                      _buildConfirmPasswordField(),
                      Spacer(),
                      SizedBox(height: 98.v),
                      _buildNextButton()
                    ])))));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return CustomTextFormField(
        width: 335.h,
        controller: controller.userProfileController,
        hintText: "lbl_enter_username".tr,
        alignment: Alignment.bottomCenter,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildLoginForm() {
    return SizedBox(
        height: 352.v,
        width: 335.h,
        child: Stack(
            alignment: Alignment.bottomCenter, children: [
          SizedBox(
            height: 200,
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
              )),
        ]));
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordFieldController,
        hintText: "lbl_enter_password".tr,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(12.h, 18.v, 20.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEyeoff,
                    height: 14.adaptSize,
                    width: 14.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 22.h, top: 13.v, bottom: 13.v)));
  }

  /// Section Widget
  Widget _buildConfirmPasswordField() {
    return Obx(() => CustomTextFormField(
        controller: controller.confirmPasswordFieldController,
        hintText: "msg_confirm_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword1.value =
                  !controller.isShowPassword1.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEyeoff,
                    height: 14.adaptSize,
                    width: 14.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword1.value,
        contentPadding: EdgeInsets.only(left: 22.h, top: 13.v, bottom: 13.v)));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        height: 50.v,
        text: "lbl_next".tr,
        onPressed: () {
          onTapNextButton();
        });
  }

  /// Navigates to the signupTwoScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.signupTwoScreen,
    );
  }
}

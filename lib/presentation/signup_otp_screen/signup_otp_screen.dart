import 'controller/signup_otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application12/widgets/custom_pin_code_text_field.dart';

class SignupOtpScreen extends GetWidget<SignupOtpController> {
  const SignupOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(20.h),
                child: Column(children: [
                  SizedBox(
                      height: 308.v,
                      width: 266.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
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
                          ])),
                  SizedBox(height: 18.v),
                  Text("lbl_verification".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 8.v),
                  Text("msg_enter_otp_code_sent".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 50.v),
                  Padding(
                      padding: EdgeInsets.only(left: 34.h, right: 33.h),
                      child: Obx(() => CustomPinCodeTextField(
                          context: Get.context!,
                          controller: controller.otpController.value,
                          onChanged: (value) {}))),
                  Spacer(),
                  SizedBox(height: 98.v),
                  CustomElevatedButton(
                      height: 50.v,
                      text: "lbl_submit".tr,
                      onPressed: () {
                        onTapSubmit();
                      })
                ]))));
  }

  /// Navigates to the signupLocationScreen when the action is triggered.
  onTapSubmit() {
    Get.toNamed(
      AppRoutes.signupLocationScreen,
    );
  }
}

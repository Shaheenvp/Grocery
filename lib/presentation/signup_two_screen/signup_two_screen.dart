import 'controller/signup_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/core/utils/validation_functions.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application12/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupTwoScreen extends GetWidget<SignupTwoController> {
  SignupTwoScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.all(20.h),
                    child: Column(children: [
                      SizedBox(
                          height: 308.v,
                          width: 266.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
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
                      SizedBox(height: 53.v),
                      CustomTextFormField(
                          controller: controller.emailController,
                          hintText: "lbl_email_id".tr,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          }),
                      SizedBox(height: 23.v),
                      CustomTextFormField(
                          controller: controller.phoneNumberController,
                          hintText: "lbl_phone_number".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.phone,
                          validator: (value) {
                            if (!isValidPhone(value)) {
                              return "err_msg_please_enter_valid_phone_number"
                                  .tr;
                            }
                            return null;
                          }),
                      Spacer(),
                      SizedBox(height: 98.v),
                      CustomElevatedButton(
                          height: 50.v,
                          text: "lbl_next".tr,
                          onPressed: () {
                            onTapNext();
                          })
                    ])))));
  }

  /// Navigates to the signupThreeScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.signupThreeScreen,
    );
  }
}

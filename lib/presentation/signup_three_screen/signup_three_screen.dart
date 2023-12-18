import 'controller/signup_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/core/utils/validation_functions.dart';
import 'package:mohammed_s_application12/widgets/custom_drop_down.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application12/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupThreeScreen extends GetWidget<SignupThreeController> {
  SignupThreeScreen({Key? key}) : super(key: key);

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
                      _buildLogoSection(),
                      _buildAddressSection(),
                      SizedBox(height: 16.v),
                      _buildCitySection(),
                      SizedBox(height: 16.v),
                      CustomDropDown(
                          icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdropdown,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          hintText: "lbl_city".tr,
                          items: controller.signupThreeModelObj.value
                              .dropdownItemList!.value,
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      SizedBox(height: 16.v),
                      _buildPincodeSection(),
                      SizedBox(height: 74.v),
                      _buildNextButtonSection(),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildAddressSection() {
    return CustomTextFormField(
        width: 335.h,
        controller: controller.addressSectionController,
        hintText: "lbl_address_line_1".tr,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildLogoSection() {
    return SizedBox(
        height: 352.v,
        width: 335.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
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
  Widget _buildCitySection() {
    return CustomTextFormField(
        controller: controller.citySectionController,
        hintText: "lbl_address_line_2".tr);
  }

  /// Section Widget
  Widget _buildPincode() {
    return CustomTextFormField(
        width: 160.h,
        controller: controller.pincodeController,
        hintText: "lbl_pincode".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.number,
        validator: (value) {
          if (!isNumeric(value)) {
            return "err_msg_please_enter_valid_number".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPincodeSection() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomDropDown(
          width: 159.h,
          icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdropdown,
                  height: 24.adaptSize,
                  width: 9.adaptSize)),
          hintText: "lbl_state".tr,
          items: controller.signupThreeModelObj.value.dropdownItemList1!.value,
          onChanged: (value) {
            controller.onSelected1(value);
          }),
      _buildPincode()
    ]);
  }

  /// Section Widget
  Widget _buildNextButtonSection() {
    return CustomElevatedButton(
        height: 50.v,
        text: "lbl_next".tr,
        onPressed: () {
          onTapNextButtonSection();
        });
  }

  /// Navigates to the signupOtpScreen when the action is triggered.
  onTapNextButtonSection() {
    Get.toNamed(
      AppRoutes.signupOtpScreen,
    );
  }
}

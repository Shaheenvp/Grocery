import 'controller/deliver_to_new_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application12/widgets/custom_radio_button.dart';
import 'package:mohammed_s_application12/widgets/custom_text_form_field.dart';

class DeliverToNewAddressScreen
    extends GetWidget<DeliverToNewAddressController> {
  const DeliverToNewAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 70.v),
                padding: EdgeInsets.symmetric(vertical: 16.v),
                decoration: AppDecoration.fillGray,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 3.v),
                  _buildLocationRadioGroup(),
                  SizedBox(height: 19.v),
                  _buildAddressColumn(),
                  Spacer(),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      margin: EdgeInsets.symmetric(horizontal: 53.h),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                      buttonTextStyle: CustomTextStyles.titleLargeOnPrimary)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 37.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 23.h, top: 43.v, bottom: 24.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_deliver_to".tr),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildLocationRadioGroup() {
    return Obx(() => Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 19.v, right: 184.h),
              child: CustomRadioButton(
                  text: "msg_current_location".tr,
                  value: controller
                      .deliverToNewAddressModelObj.value.radioList.value[0],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.fromLTRB(20.h, 17.v, 213.h, 17.v),
              child: CustomRadioButton(
                  text: "lbl_new_adderss".tr,
                  value: controller
                      .deliverToNewAddressModelObj.value.radioList.value[2],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildAddressColumn() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 21.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(children: [
          SizedBox(
              height: 50.v,
              width: 335.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text("lbl_address_line_1".tr,
                            style: CustomTextStyles.bodyLargeGreen100))),
                CustomTextFormField(
                    width: 335.h,
                    controller: controller.editTextController,
                    alignment: Alignment.center)
              ])),
          SizedBox(height: 16.v),
          SizedBox(
              height: 50.v,
              width: 335.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text("lbl_address_line_2".tr,
                            style: CustomTextStyles.bodyLargeGreen100))),
                CustomTextFormField(
                    width: 335.h,
                    controller: controller.editTextController1,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center)
              ])),
          SizedBox(height: 16.v),
          SizedBox(
              height: 50.v,
              width: 335.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(24.h, 12.v, 6.h, 12.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("lbl_city".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGreen100)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowdropdown,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ]))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 50.v,
                        width: 335.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.h),
                            border: Border.all(
                                color: theme.colorScheme.primary, width: 1.h))))
              ])),
          SizedBox(height: 16.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
                height: 50.v,
                width: 159.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          width: 130.h,
                          margin: EdgeInsets.fromLTRB(23.h, 12.v, 6.h, 12.v),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_state".tr,
                                    style: CustomTextStyles.bodyLargeGreen100),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowdropdown,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 50.v,
                          width: 159.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.h),
                              border: Border.all(
                                  color: theme.colorScheme.primary,
                                  width: 1.h))))
                ])),
            SizedBox(
                height: 50.v,
                width: 160.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 23.h),
                          child: Text("lbl_pincode".tr,
                              style: CustomTextStyles.bodyLargeGreen100))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 50.v,
                          width: 160.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.h),
                              border: Border.all(
                                  color: theme.colorScheme.primary,
                                  width: 1.h))))
                ]))
          ])
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

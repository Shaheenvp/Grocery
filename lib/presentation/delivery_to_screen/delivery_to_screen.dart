import 'controller/delivery_to_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application12/widgets/custom_radio_button.dart';

class DeliveryToScreen extends GetWidget<DeliveryToController> {
  const DeliveryToScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 70.v),
                padding: EdgeInsets.symmetric(vertical: 16.v),
                decoration: AppDecoration.fillGray,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 3.v),
                  _buildLocationRadioGroup(),
                  Spacer(),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      margin: EdgeInsets.symmetric(horizontal: 53.h),
                      buttonStyle: CustomButtonStyles.fillGray,
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
                  value: controller.deliveryToModelObj.value.radioList.value[0],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  })),
          Padding(
              padding: EdgeInsets.fromLTRB(20.h, 17.v, 213.h, 17.v),
              child: CustomRadioButton(
                  text: "lbl_new_adderss".tr,
                  value: controller.deliveryToModelObj.value.radioList.value[2],
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

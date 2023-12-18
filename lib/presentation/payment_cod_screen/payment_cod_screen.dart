import 'controller/payment_cod_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application12/widgets/custom_radio_button.dart';

class PaymentCodScreen extends GetWidget<PaymentCodController> {
  const PaymentCodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                height: 665.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 35.v),
                          decoration: AppDecoration.fillGray,
                          child: _buildPaymentOptions())),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 124.v),
                          child: SizedBox(width: 373.h, child: Divider()))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 179.v),
                          child: SizedBox(width: 373.h, child: Divider())))
                ])),
            bottomNavigationBar: _buildOrderSummary()));
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
        title: AppbarSubtitle(
            text: "lbl_payment".tr,
            margin: EdgeInsets.only(top: 44.v, bottom: 16.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildPaymentOptions() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Obx(() => Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: CustomRadioButton(
                  text: "msg_cash_on_delivery".tr,
                  value: "msg_cash_on_delivery".tr,
                  groupValue: controller.radioGroup.value,
                  onChange: (value) {
                    controller.radioGroup.value = value;
                  }))),
          SizedBox(height: 14.v),
          Divider(),
          SizedBox(height: 14.v),
          Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Obx(() => Column(children: [
                    CustomRadioButton(
                        text: "msg_debit_credit_card".tr,
                        value: controller
                            .paymentCodModelObj.value.radioList.value[0],
                        groupValue: controller.radioGroup1.value,
                        onChange: (value) {
                          controller.radioGroup1.value = value;
                        }),
                    Padding(
                        padding: EdgeInsets.only(top: 33.v, right: 55.h),
                        child: CustomRadioButton(
                            text: "lbl_net_banking".tr,
                            value: controller
                                .paymentCodModelObj.value.radioList.value[1],
                            groupValue: controller.radioGroup1.value,
                            onChange: (value) {
                              controller.radioGroup1.value = value;
                            }))
                  ]))),
          SizedBox(height: 14.v)
        ]));
  }

  /// Section Widget
  Widget _buildOrderSummary() {
    return Container(
        margin: EdgeInsets.only(left: 18.h, right: 21.h, bottom: 11.v),
        decoration: AppDecoration.outlineLightgreen100,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 38.v,
              width: 84.h,
              margin: EdgeInsets.only(top: 4.v, bottom: 1.v),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text("lbl_30_00".tr,
                        style: CustomTextStyles.titleMediumSemiBold18)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("lbl_total_amount".tr,
                        style: CustomTextStyles.labelLargeGray50001)),
                CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                    height: 21.v,
                    width: 22.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 3.v))
              ])),
          CustomElevatedButton(
              width: 113.h,
              text: "lbl_next".tr,
              buttonStyle: CustomButtonStyles.outlineBlack,
              buttonTextStyle: CustomTextStyles.titleLargeOnPrimarySemiBold,
              onPressed: () {
                onTapNext();
              })
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the paymentFinalScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.paymentFinalScreen,
    );
  }
}

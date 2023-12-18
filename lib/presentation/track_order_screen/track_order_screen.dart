import 'controller/track_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_checkbox_button.dart';
import 'package:mohammed_s_application12/widgets/custom_radio_button.dart';

class TrackOrderScreen extends GetWidget<TrackOrderController> {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 6.v),
                child: Column(children: [
                  _buildOrderPlaced(),
                  SizedBox(height: 18.v),
                  Text("lbl_product_list".tr,
                      style: CustomTextStyles.titleSmallPrimary),
                  SizedBox(height: 17.v),
                  _buildNinetyNine(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 34.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 41.v, bottom: 26.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_track_order".tr),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildOrderPlaced() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 17.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Row(children: [
                          Text("lbl_order_110523".tr,
                              style: theme.textTheme.titleMedium),
                          Spacer(),
                          CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              margin: EdgeInsets.only(top: 2.v, bottom: 3.v)),
                          Text("lbl_30_00".tr,
                              style: CustomTextStyles.titleMediumSemiBold)
                        ])),
                    SizedBox(height: 1.v),
                    Text("msg_wed_15_june_2022".tr,
                        style: CustomTextStyles.bodyMedium13)
                  ])),
          SizedBox(height: 29.v),
          Container(
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(horizontal: 34.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 21.v,
                        width: 221.h,
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Obx(() => CustomCheckboxButton(
                                  alignment: Alignment.centerLeft,
                                  text: "lbl_09_00_am".tr,
                                  value: controller.orderPlaced.value,
                                  onChange: (value) {
                                    controller.orderPlaced.value = value;
                                  }))),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Obx(() => CustomCheckboxButton(
                                  alignment: Alignment.centerRight,
                                  text: "lbl_order_placed".tr,
                                  value: controller.orderPlaced1.value,
                                  onChange: (value) {
                                    controller.orderPlaced1.value = value;
                                  })))
                        ])),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(left: 97.h),
                        child: SizedBox(
                            height: 31.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: appTheme.black900))),
                    SizedBox(height: 1.v),
                    Container(
                        height: 21.v,
                        width: 244.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Obx(() => CustomCheckboxButton(
                                  alignment: Alignment.centerLeft,
                                  text: "lbl_09_01_am".tr,
                                  value: controller.orderPlaced2.value,
                                  onChange: (value) {
                                    controller.orderPlaced2.value = value;
                                  }))),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Obx(() => CustomCheckboxButton(
                                  alignment: Alignment.centerRight,
                                  text: "lbl_order_confirmed".tr,
                                  value: controller.orderConfirmed.value,
                                  onChange: (value) {
                                    controller.orderConfirmed.value = value;
                                  })))
                        ])),
                    SizedBox(height: 3.v),
                    Padding(
                        padding: EdgeInsets.only(left: 97.h),
                        child: SizedBox(
                            height: 31.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: appTheme.black900))),
                    SizedBox(height: 1.v),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h, right: 43.h),
                        child: Row(children: [
                          Text("lbl_09_10_am".tr,
                              style: theme.textTheme.titleSmall),
                          Obx(() => Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: CustomRadioButton(
                                  text: "lbl_order_packed".tr,
                                  value: "lbl_order_packed".tr,
                                  groupValue: controller.radioGroup.value,
                                  textStyle: theme.textTheme.titleSmall,
                                  onChange: (value) {
                                    controller.radioGroup.value = value;
                                  })))
                        ])),
                    SizedBox(height: 3.v),
                    Padding(
                        padding: EdgeInsets.only(left: 97.h),
                        child: SizedBox(
                            height: 31.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: appTheme.gray50001))),
                    SizedBox(height: 2.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Obx(() => Padding(
                            padding: EdgeInsets.only(right: 31.h),
                            child: CustomRadioButton(
                                text: "msg_out_for_delivery".tr,
                                value: "msg_out_for_delivery".tr,
                                groupValue: controller.radioGroup1.value,
                                textStyle: CustomTextStyles.titleSmallGray50001,
                                onChange: (value) {
                                  controller.radioGroup1.value = value;
                                })))),
                    SizedBox(height: 2.v),
                    Padding(
                        padding: EdgeInsets.only(left: 97.h),
                        child: SizedBox(
                            height: 31.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: appTheme.gray50001))),
                    SizedBox(height: 1.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Obx(() => Padding(
                            padding: EdgeInsets.only(right: 29.h),
                            child: CustomRadioButton(
                                text: "lbl_order_delivered".tr,
                                value: "lbl_order_delivered".tr,
                                groupValue: controller.radioGroup2.value,
                                textStyle: CustomTextStyles.titleSmallGray50001,
                                onChange: (value) {
                                  controller.radioGroup2.value = value;
                                }))))
                  ])),
          SizedBox(height: 15.v)
        ]));
  }

  /// Section Widget
  Widget _buildNinetyNine() {
    return Container(
        padding: EdgeInsets.all(19.h),
        decoration: AppDecoration.fillOnPrimary,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgTomatoes1,
                  height: 65.v,
                  width: 89.h,
                  margin: EdgeInsets.only(bottom: 2.v)),
              Container(
                  width: 134.h,
                  margin: EdgeInsets.only(left: 10.h, bottom: 29.v),
                  child: Text("msg_fresh_organic_tomato3".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeBlack900)),
              Spacer(),
              Container(
                  height: 18.v,
                  width: 45.h,
                  margin: EdgeInsets.only(bottom: 49.v),
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("lbl_30_00".tr,
                            style: CustomTextStyles.labelLargeBlack900)),
                    CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        alignment: Alignment.centerLeft)
                  ]))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

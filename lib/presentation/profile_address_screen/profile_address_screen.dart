import 'controller/profile_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_text_form_field.dart';

class ProfileAddressScreen extends GetWidget<ProfileAddressController> {
  const ProfileAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray100,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(children: [
                  _buildTwentyFive(),
                  SizedBox(height: 33.v),
                  _buildTwentyFour(),
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
        title: AppbarSubtitle(text: "lbl_address".tr),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTwentyFive() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("msg_current_location".tr,
                  style: theme.textTheme.titleMedium),
              SizedBox(height: 4.v),
              Text("msg_delivering_to_kakkanad".tr,
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 2.v)
            ]));
  }

  /// Section Widget
  Widget _buildTwentyFour() {
    return Container(
        padding: EdgeInsets.all(19.h),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child:
                  Text("lbl_address".tr, style: theme.textTheme.titleMedium)),
          SizedBox(height: 6.v),
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
                    controller: controller.addressController,
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
                    controller: controller.editTextController,
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
          ]),
          SizedBox(height: 5.v)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

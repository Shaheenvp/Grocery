import 'controller/profile_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/core/utils/validation_functions.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingScreen extends GetWidget<ProfileSettingController> {
  ProfileSettingScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray100,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    child: Column(children: [
                      _buildFiftyFive(),
                      SizedBox(height: 6.v),
                      _buildFiftyTwo(),
                      SizedBox(height: 6.v),
                      _buildFortyNine(),
                      SizedBox(height: 5.v)
                    ])))));
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
        title: AppbarSubtitle(
            text: "msg_profile_settings".tr,
            margin: EdgeInsets.only(top: 42.v, bottom: 19.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildFiftyFive() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomFloatingTextField(
              controller: controller.firstNameController,
              labelText: "lbl_first_name".tr,
              labelStyle: CustomTextStyles.titleLargeBlack900,
              hintText: "lbl_first_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              }),
          SizedBox(height: 17.v),
          CustomFloatingTextField(
              controller: controller.nameController,
              labelText: "lbl_second_name".tr,
              labelStyle: CustomTextStyles.titleLargeBlack900,
              hintText: "lbl_second_name".tr,
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              }),
          SizedBox(height: 4.v)
        ]));
  }

  /// Section Widget
  Widget _buildFiftyTwo() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v),
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
                        child: Text("lbl_email_id".tr,
                            style: CustomTextStyles.bodyLargePrimary))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 50.v,
                        width: 335.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.h),
                            border: Border.all(
                                color: theme.colorScheme.primary, width: 1.h))))
              ])),
          SizedBox(height: 23.v),
          SizedBox(
              height: 50.v,
              width: 335.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text("lbl_phone_number".tr,
                            style: CustomTextStyles.bodyLargePrimary))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 50.v,
                        width: 335.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.h),
                            border: Border.all(
                                color: theme.colorScheme.primary, width: 1.h))))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildFortyNine() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 22.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 50.v,
              width: 335.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text("lbl_username".tr,
                            style: CustomTextStyles.bodyLargePrimary))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 50.v,
                        width: 335.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.h),
                            border: Border.all(
                                color: theme.colorScheme.primary, width: 1.h))))
              ])),
          SizedBox(height: 23.v),
          SizedBox(
              height: 50.v,
              width: 335.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text("lbl_password".tr,
                            style: CustomTextStyles.bodyLargePrimary))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 50.v,
                        width: 335.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.h),
                            border: Border.all(
                                color: theme.colorScheme.primary, width: 1.h))))
              ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

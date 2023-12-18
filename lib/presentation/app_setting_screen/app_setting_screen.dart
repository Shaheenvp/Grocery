import 'controller/app_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_switch.dart';

class AppSettingScreen extends GetWidget<AppSettingController> {
  const AppSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 42.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildNotificationRow(),
                      SizedBox(height: 15.v),
                      _buildDarkModeRow(),
                      SizedBox(height: 14.v),
                      Text("lbl_language".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 15.v),
                      Text("lbl_about_us".tr, style: theme.textTheme.bodyLarge),
                      SizedBox(height: 12.v),
                      Text("msg_terms_and_condition".tr,
                          style: theme.textTheme.bodyLarge),
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
        title: AppbarSubtitle(
            text: "lbl_settings".tr,
            margin: EdgeInsets.only(top: 42.v, bottom: 18.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildNotificationRow() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_notification".tr, style: theme.textTheme.bodyLarge),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildDarkModeRow() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_dark_mode".tr, style: theme.textTheme.bodyLarge),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(top: 2.v),
              value: controller.isSelectedSwitch1.value,
              onChange: (value) {
                controller.isSelectedSwitch1.value = value;
              }))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

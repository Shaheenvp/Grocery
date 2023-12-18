import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/home_page/home_page.dart';
import 'package:mohammed_s_application12/presentation/my_cart_page/my_cart_page.dart';
import 'package:mohammed_s_application12/widgets/custom_bottom_bar.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 40.v),
                child: Column(children: [
                  _buildSettingRow(),
                  SizedBox(height: 42.v),
                  _buildClockRow(),
                  SizedBox(height: 13.v),
                  _buildNounTrackingRow(),
                  SizedBox(height: 12.v),
                  _buildLocationRow(),
                  SizedBox(height: 11.v),
                  _buildCallingRow(),
                  SizedBox(height: 14.v),
                  _buildSettingRow1(),
                  SizedBox(height: 51.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgUpload,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 2.v, bottom: 3.v)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLogout();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text("lbl_logout".tr,
                                            style: theme.textTheme.bodyLarge)))
                              ]))),
                  SizedBox(height: 5.v)
                ])),
        ));
  }

  /// Section Widget
  Widget _buildSettingRow() {
    return Container(
        width: 335.h,
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerRight,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse35,
                        height: 84.adaptSize,
                        width: 84.adaptSize,
                        radius: BorderRadius.circular(42.h),
                        margin: EdgeInsets.only(top: 15.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgSetting,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        margin: EdgeInsets.only(left: 88.h, bottom: 74.v),
                        onTap: () {
                          onTapImgSetting();
                        })
                  ])),
          SizedBox(height: 11.v),
          Text("lbl_will_johnson".tr,
              style: CustomTextStyles.headlineSmallBlack900),
          SizedBox(height: 1.v),
          Text("lbl_91_8632148965".tr, style: CustomTextStyles.bodySmall12),
          SizedBox(height: 39.v)
        ]));
  }

  /// Section Widget
  Widget _buildClockRow() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 22.v,
                  width: 23.h,
                  margin: EdgeInsets.only(bottom: 5.v)),
              Padding(
                  padding: EdgeInsets.only(left: 11.h, bottom: 2.v),
                  child: Text("lbl_my_orders".tr,
                      style: theme.textTheme.bodyLarge)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 26.adaptSize,
                  width: 26.adaptSize)
            ]));
  }

  /// Section Widget
  Widget _buildNounTrackingRow() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgNounTracking3477608,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 7.h, bottom: 6.v),
                  child: Text("lbl_track_order".tr,
                      style: theme.textTheme.bodyLarge)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  margin: EdgeInsets.only(top: 5.v))
            ]));
  }

  /// Section Widget
  Widget _buildLocationRow() {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLocationPrimary19x19,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  margin: EdgeInsets.only(bottom: 8.v)),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, bottom: 4.v),
                  child:
                      Text("lbl_address".tr, style: theme.textTheme.bodyLarge)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  margin: EdgeInsets.only(top: 2.v))
            ]));
  }

  /// Section Widget
  Widget _buildCallingRow() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCalling,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(top: 2.v, bottom: 9.v)),
              Padding(
                  padding: EdgeInsets.only(left: 13.h, bottom: 3.v),
                  child: Text("lbl_contact_us".tr,
                      style: theme.textTheme.bodyLarge)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 26.adaptSize,
                  width: 26.adaptSize)
            ]));
  }

  /// Section Widget
  Widget _buildSettingRow1() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgSettingPrimary,
                  height: 19.adaptSize,
                  width: 19.adaptSize,
                  margin: EdgeInsets.only(bottom: 6.v)),
              Padding(
                  padding: EdgeInsets.only(left: 9.h, bottom: 2.v),
                  child: Text("lbl_settings".tr,
                      style: theme.textTheme.bodyLarge)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 26.adaptSize,
                  width: 26.adaptSize)
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Bag:
        return AppRoutes.myCartPage;
      case BottomBarEnum.Heart:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.myCartPage:
        return MyCartPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the profileSettingScreen when the action is triggered.
  onTapImgSetting() {
    Get.toNamed(
      AppRoutes.profileSettingScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogout() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}

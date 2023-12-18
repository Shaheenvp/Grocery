import 'controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/home_page/home_page.dart';
import 'package:mohammed_s_application12/presentation/my_cart_page/my_cart_page.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_bottom_bar.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 798.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 84.h, vertical: 192.v),
                          decoration: AppDecoration.fillGray,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: 10.adaptSize,
                                              width: 10.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 61.v, bottom: 92.v),
                                              decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h))),
                                          Container(
                                              height: 163.v,
                                              width: 137.h,
                                              margin:
                                                  EdgeInsets.only(left: 22.h),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        21.h),
                                                            child: Text(
                                                                "lbl2".tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeInter))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Container(
                                                            height: 6.adaptSize,
                                                            width: 6.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        37.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            3.h)))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            height: 4.adaptSize,
                                                            width: 4.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 2.h,
                                                                    top: 6.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2.h)))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgNoNotification,
                                                        height: 156.v,
                                                        width: 135.h,
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Container(
                                              height: 10.adaptSize,
                                              width: 10.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 16.h,
                                                  top: 61.v,
                                                  bottom: 91.v),
                                              decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h)))
                                        ]))),
                            SizedBox(height: 34.v),
                            Text("msg_no_notifications".tr,
                                style: theme.textTheme.titleMedium),
                            SizedBox(height: 2.v),
                            Container(
                                width: 175.h,
                                margin: EdgeInsets.symmetric(horizontal: 16.h),
                                child: Text("msg_it_seems_like_you".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodySmallLight)),
                            SizedBox(height: 83.v)
                          ]))),
                  _buildAppBar()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 70.v,
        leadingWidth: 35.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 21.h, top: 40.v, bottom: 6.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarTitle(
            text: "lbl_notification".tr,
            margin: EdgeInsets.only(left: 10.h, top: 32.v, bottom: 1.v)),
        styleType: Style.bgShadow_1);
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

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

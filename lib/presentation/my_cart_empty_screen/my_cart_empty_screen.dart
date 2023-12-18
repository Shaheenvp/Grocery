import 'controller/my_cart_empty_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/home_page/home_page.dart';
import 'package:mohammed_s_application12/presentation/my_cart_page/my_cart_page.dart';
import 'package:mohammed_s_application12/widgets/custom_bottom_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';

class MyCartEmptyScreen extends GetWidget<MyCartEmptyController> {
  const MyCartEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 757.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: EdgeInsets.only(top: 69.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 49.h, vertical: 89.v),
                          decoration: AppDecoration.fillGray,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 82.v),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 46.h, right: 35.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: 10.adaptSize,
                                              width: 10.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 64.v, bottom: 109.v),
                                              decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h))),
                                          Container(
                                              height: 183.v,
                                              width: 131.h,
                                              margin:
                                                  EdgeInsets.only(left: 17.h),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEmptyCart1,
                                                        height: 183.v,
                                                        width: 131.h,
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Container(
                                                            width: 99.h,
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    22.h,
                                                                    6.v,
                                                                    9.h,
                                                                    156.v),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                      height: 4
                                                                          .adaptSize,
                                                                      width: 4
                                                                          .adaptSize,
                                                                      margin: EdgeInsets.only(
                                                                          top: 12
                                                                              .v,
                                                                          bottom: 3
                                                                              .v),
                                                                      decoration: BoxDecoration(
                                                                          color: theme
                                                                              .colorScheme
                                                                              .primary,
                                                                          borderRadius:
                                                                              BorderRadius.circular(2.h))),
                                                                  Text(
                                                                      "lbl2".tr,
                                                                      style: CustomTextStyles
                                                                          .bodyLargeInter)
                                                                ])))
                                                  ])),
                                          Container(
                                              height: 6.adaptSize,
                                              width: 6.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 6.h,
                                                  top: 127.v,
                                                  bottom: 50.v),
                                              decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.h))),
                                          Container(
                                              height: 10.adaptSize,
                                              width: 10.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 16.h,
                                                  top: 69.v,
                                                  bottom: 104.v),
                                              decoration: BoxDecoration(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.h)))
                                        ])),
                                SizedBox(height: 36.v),
                                Text("msg_your_cart_is_empty".tr,
                                    style: theme.textTheme.titleMedium),
                                SizedBox(
                                    width: 171.h,
                                    child: Text("msg_add_items_to_the".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            CustomTextStyles.bodySmallLight)),
                                Spacer(),
                                CustomElevatedButton(
                                    height: 50.v,
                                    text: "lbl_start_shopping".tr,
                                    onPressed: () {
                                      onTapStartShopping();
                                    })
                              ]))),
                  _buildMyCartEmpty()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildMyCartEmpty() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.v),
            decoration: AppDecoration.outlineBlack900,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("lbl_cart".tr,
                              style: theme.textTheme.headlineSmall))),
                  Divider(),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("msg_delivering_to_kakkanad".tr,
                                style: CustomTextStyles.bodySmall11),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtChange();
                                },
                                child: Text("lbl_change".tr,
                                    style: CustomTextStyles.labelMediumPrimary))
                          ]))
                ])));
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

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapStartShopping() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  /// Navigates to the deliveryToOneScreen when the action is triggered.
  onTapTxtChange() {
    Get.toNamed(
      AppRoutes.deliveryToOneScreen,
    );
  }
}

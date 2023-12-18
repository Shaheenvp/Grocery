import 'controller/my_cart_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';

class MyCartProductScreen extends GetWidget<MyCartProductController> {
  const MyCartProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBarSection(),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 70.v),
                decoration: AppDecoration.fillGray,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 35.v),
                  _buildTomatoesOneSection(),
                  Spacer(),
                  _buildItemInVegetableSection()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBarSection() {
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
            text: "lbl_vegetable2".tr,
            margin: EdgeInsets.only(top: 44.v, bottom: 16.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTomatoesOneSection() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgTomatoes1,
                  height: 43.v,
                  width: 59.h,
                  margin: EdgeInsets.only(top: 6.v, bottom: 35.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 11.h, bottom: 3.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("msg_fresh_organic_tomato2".tr,
                                style: CustomTextStyles.bodySmall12),
                            SizedBox(height: 37.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 18.v,
                                      width: 45.h,
                                      margin: EdgeInsets.only(
                                          top: 3.v, bottom: 5.v),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text("lbl_30_00".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeBlack900)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLocation,
                                                height: 14.adaptSize,
                                                width: 14.adaptSize,
                                                alignment: Alignment.centerLeft)
                                          ])),
                                  SizedBox(
                                      height: 27.v,
                                      width: 74.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 24.h),
                                                    decoration: AppDecoration
                                                        .outlineGray
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder2),
                                                    child: Container(
                                                        height: 24.v,
                                                        width: 23.h,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .blueGray100,
                                                            border: Border.all(
                                                                color: appTheme
                                                                    .gray50001,
                                                                width: 1.h))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    width: 60.h,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 7.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("lbl".tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeGray50001),
                                                          Text("lbl_0".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge),
                                                          CustomIconButton(
                                                              height: 27.v,
                                                              width: 13.h,
                                                              child:
                                                                  CustomImageView())
                                                        ])))
                                          ]))
                                ])
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildItemInVegetableSection() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 4.v, bottom: 10.v),
                  child: Text("msg_1_item_in_vegetable".tr,
                      style: CustomTextStyles.bodyMediumGray50001)),
              Container(
                  height: 27.v,
                  width: 69.h,
                  margin: EdgeInsets.only(bottom: 8.v),
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("lbl_30_00".tr,
                            style: CustomTextStyles.titleMediumSemiBold18)),
                    CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 21.v,
                        width: 22.h,
                        alignment: Alignment.centerLeft)
                  ]))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

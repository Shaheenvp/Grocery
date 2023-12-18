import 'controller/my_cart_product_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';

class MyCartProductOneScreen extends GetWidget<MyCartProductOneController> {
  const MyCartProductOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 70.v),
                decoration: AppDecoration.fillGray,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 35.v),
                  _buildTomatoesOneRow(),
                  Spacer(),
                  _buildEightyEightRow()
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
        title: AppbarSubtitle(
            text: "lbl_vegetable2".tr,
            margin: EdgeInsets.only(top: 44.v, bottom: 16.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTomatoesOneRow() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgTomatoes1,
                  height: 43.v,
                  width: 59.h,
                  margin: EdgeInsets.only(top: 14.v, bottom: 43.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 11.h, bottom: 10.v),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 7.v),
                                  child: Text("msg_fresh_organic_tomato2".tr,
                                      style: CustomTextStyles.bodySmall12)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconlyBoldHeart,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ]),
                        SizedBox(height: 37.v),
                        Padding(
                            padding: EdgeInsets.only(right: 3.h),
                            child: Row(
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
                                          alignment: Alignment.centerLeft,
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
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 1.h),
                                                    child: Row(children: [
                                                      CustomIconButton(
                                                          height: 27.v,
                                                          width: 25.h,
                                                          onTap: () {
                                                            onTapBtnIconButton();
                                                          },
                                                          child:
                                                              CustomImageView()),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 9.h,
                                                                  top: 2.v),
                                                          child: Text(
                                                              "lbl_1".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15.h),
                                                          child: CustomIconButton(
                                                              height: 27.v,
                                                              width: 13.h,
                                                              child:
                                                                  CustomImageView()))
                                                    ])))
                                          ]))
                                ]))
                      ])))
            ]));
  }

  /// Section Widget
  Widget _buildEightyEightRow() {
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

  /// Navigates to the myCartProductScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.myCartProductScreen,
    );
  }
}

import 'controller/payment_final_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';

class PaymentFinalScreen extends GetWidget<PaymentFinalController> {
  const PaymentFinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 35.v),
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  _buildFortySeven(),
                  SizedBox(height: 10.v),
                  _buildFortyFive(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildFortySix()));
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
  Widget _buildFortySeven() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("msg_cash_on_delivery".tr, style: theme.textTheme.bodyLarge)
            ]));
  }

  /// Section Widget
  Widget _buildFortyFive() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 10.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("lbl_subtotal".tr,
                            style: CustomTextStyles.bodySmall12)),
                    SizedBox(
                        height: 18.v,
                        width: 45.h,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text("lbl_30_00".tr,
                                  style: CustomTextStyles.bodySmall12)),
                          CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              alignment: Alignment.centerLeft)
                        ]))
                  ])),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text("lbl_delivery".tr,
                            style: CustomTextStyles.bodySmall12)),
                    Text("lbl_free".tr,
                        style: CustomTextStyles.bodySmallPrimary)
                  ])),
          SizedBox(height: 10.v),
          Divider(),
          SizedBox(height: 10.v),
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_grand_total".tr,
                              style:
                                  CustomTextStyles.labelLargeBlack900SemiBold),
                          Text("msg_inclusive_of_all".tr,
                              style: CustomTextStyles.bodySmall8)
                        ]),
                    Container(
                        height: 18.v,
                        width: 46.h,
                        margin: EdgeInsets.only(bottom: 8.v),
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text("lbl_30_00".tr,
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold)),
                          CustomImageView(
                              imagePath: ImageConstant.imgLocation,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              alignment: Alignment.centerLeft)
                        ]))
                  ])),
          SizedBox(height: 2.v)
        ]));
  }

  /// Section Widget
  Widget _buildFortySix() {
    return Container(
        margin: EdgeInsets.only(left: 110.h, right: 110.h, bottom: 11.v),
        decoration: AppDecoration.outlineLightgreen100,
        child: CustomElevatedButton(
            text: "lbl_confirm".tr,
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle: CustomTextStyles.titleLargeOnPrimarySemiBold,
            onPressed: () {
              onTapConfirm();
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the paymentPopupScreen when the action is triggered.
  onTapConfirm() {
    Get.toNamed(
      AppRoutes.paymentPopupScreen,
    );
  }
}

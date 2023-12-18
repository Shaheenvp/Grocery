import 'controller/my_cart_controller.dart';
import 'models/my_cart_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class MyCartPage extends StatelessWidget {
  MyCartPage({Key? key}) : super(key: key);

  MyCartController controller = Get.put(MyCartController(MyCartModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    children: [
                      _buildCartColumn(),
                      SizedBox(height: 5,),
                      _buildVegetableRow(),
                      SizedBox(height: 5.v),
                      _buildSubtotalColumn(),
                ]),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildProceedRow(),
                )

              ],
            )));
  }

  /// Section Widget
  Widget _buildVegetableRow() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.outlineBlack9002,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("lbl_vegetable".tr, style: theme.textTheme.bodyMedium),
                Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text("lbl_1_item".tr,
                        style: CustomTextStyles.bodyMediumGray50001)),
                Spacer(),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.v),
                    child: _buildSubtotalStack(dynamicText: "lbl_30_00".tr))
              ])),
          SizedBox(height: 5.v),
          Divider(),
          SizedBox(height: 5.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("msg_15_jun_16_00_22_00".tr,
                            style: CustomTextStyles.labelMediumBlack900)),
                    GestureDetector(
                        onTap: () {
                          onTapTxtChange();
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text("lbl_change".tr,
                                style: CustomTextStyles.labelMediumPrimary)))
                  ]))),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 46.v,
                        width: 52.h,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgTomatoes1,
                              height: 33.v,
                              width: 45.h,
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 46.v,
                                  width: 52.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.h),
                                      border: Border.all(
                                          color: appTheme.gray50001,
                                          width: 1.h))))
                        ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgIconlyLightOu,
                        height: 24.v,
                        width: 14.h,
                        margin: EdgeInsets.only(top: 12.v, bottom: 9.v))
                  ])),
          SizedBox(height: 19.v)
        ]));
  }

  /// Section Widget
  Widget _buildSubtotalColumn() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 10.v),
        decoration: AppDecoration.outlineBlack9002,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text("lbl_subtotal".tr,
                                style: CustomTextStyles.bodySmall12)),
                        _buildSubtotalStack(dynamicText: "lbl_30_00".tr)
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
                                  style: CustomTextStyles
                                      .labelLargeBlack900SemiBold),
                              Text("msg_inclusive_of_all".tr,
                                  style: CustomTextStyles.bodySmall8)
                            ]),
                        Container(
                            height: 18.v,
                            width: 56.h,
                            margin: EdgeInsets.only(bottom: 8.v),
                            child: Row(
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLocation,
                                      height: 12.adaptSize,
                                      width: 12.adaptSize,
                                  ),
                                  Text("lbl_30_00".tr,
                                      style: CustomTextStyles
                                          .labelLargeBlack900SemiBold),
                                ]))
                      ])),
              SizedBox(height: 2.v)
            ]));
  }

  /// Section Widget
  Widget _buildCartColumn() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.v),
            decoration: AppDecoration.outlineBlack9002,
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
                                  // onTapTxtChange1();
                                },
                                child: Text("lbl_change".tr,
                                    style: CustomTextStyles.labelMediumPrimary))
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildProceedRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 21.v,
                  width: 22.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 3.v)),
              Align(
                  alignment: Alignment.topCenter,
                  child: Text("lbl_30_00".tr,
                      style: CustomTextStyles.titleMediumSemiBold18)),
            ],),
            Align(
                alignment: Alignment.bottomCenter,
                child: Text("lbl_total_amount".tr,
                    style: CustomTextStyles.labelLargeGray50001)),
          ],
        ),
        CustomElevatedButton(
            width: 113.h,
            text: "lbl_proceed".tr,
            margin: EdgeInsets.only(right: 3.h, bottom: 1.v),
            buttonStyle: CustomButtonStyles.outlineBlack,
            buttonTextStyle:
            CustomTextStyles.titleLargeOnPrimarySemiBold,
            onPressed: () {
              // onTapProceed();
            }),

      ],
    );
  }

  /// Common widget
  Widget _buildSubtotalStack({required String dynamicText}) {
    return SizedBox(
        height: 18.v,
        width: 45.h,
        child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 12.adaptSize,
                width: 12.adaptSize,
              ),
              Text('30.00',style: TextStyle(fontSize: 10),),
        ]));
  }

  /// Navigates to the myCartDateScreen when the action is triggered.
  onTapTxtChange() {
    Get.toNamed(
      AppRoutes.myCartDateScreen,
    );
  }

  /// Navigates to the deliveryToScreen when the action is triggered.
  onTapTxtChange1() {
    Get.toNamed(
      AppRoutes.deliveryToScreen,
    );
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTapProceed() {
    Get.toNamed(
      AppRoutes.paymentScreen,
    );
  }
}

import 'controller/payment_popup_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PaymentPopupScreen extends GetWidget<PaymentPopupController> {
  const PaymentPopupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup8,
                height: 88.adaptSize,
                width: 88.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 57.h),
              ),
              SizedBox(height: 18.v),
              Text(
                "lbl_thank_you".tr,
                style: CustomTextStyles.titleLargeBlack900,
              ),
              Text(
                "msg_your_order_is_confirmed".tr,
                style: CustomTextStyles.bodyLarge18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

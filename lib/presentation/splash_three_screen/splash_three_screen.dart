import 'controller/splash_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashThreeScreen extends GetWidget<SplashThreeController> {
  const SplashThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Column(children: [
                    SizedBox(
                        height: 406.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse31,
                              height: 406.v,
                              width: 375.h,
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: ImageConstant.imgSplashDoorstep,
                              height: 217.v,
                              width: 328.h,
                              alignment: Alignment.center)
                        ])),
                    SizedBox(height: 51.v),
                    Text("msg_fast_doorstep_delivery".tr,
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 14.v),
                    Container(
                        width: 265.h,
                        margin: EdgeInsets.symmetric(horizontal: 55.h),
                        child: Text("msg_our_delivery_executive".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium))
                  ]),
                  SizedBox(height: 79.v),
                  SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 4,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.lightGreen100,
                              dotHeight: 8.v,
                              dotWidth: 8.h))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildGetStartedButton()));
  }

  /// Section Widget
  Widget _buildGetStartedButton() {
    return CustomElevatedButton(
        width: 135.h,
        text: "lbl_get_started".tr,
        margin: EdgeInsets.only(left: 120.h, right: 120.h, bottom: 59.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        onPressed: () {
          onTapGetStartedButton();
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapGetStartedButton() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}

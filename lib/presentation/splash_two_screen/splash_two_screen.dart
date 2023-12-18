import 'controller/splash_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashTwoScreen extends GetWidget<SplashTwoController> {
  const SplashTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(
                      height: 406.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse3406x375,
                            height: 406.v,
                            width: 375.h,
                            alignment: Alignment.center),
                        CustomImageView(
                            imagePath: ImageConstant.imgFigmaSplashDelivery,
                            height: 193.v,
                            width: 327.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 90.v))
                      ])),
                  SizedBox(height: 52.v),
                  Text("msg_real_time_reporting".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 14.v),
                  SizedBox(
                      width: 242.h,
                      child: Text("msg_keeping_track_of".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium)),
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
            bottomNavigationBar: _buildNextButton()));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        width: 135.h,
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 120.h, right: 120.h, bottom: 58.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
        onPressed: () {
          onTapNextButton();
        });
  }

  /// Navigates to the splashThreeScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.splashThreeScreen,
    );
  }
}

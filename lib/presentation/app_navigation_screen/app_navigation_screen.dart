import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Logo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash_One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash_Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash_Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup_One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup_Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup_Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup_OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Signup_Location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "All_Category".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.allCategoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Best_Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bestProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Best_Product One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bestProductOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My_Cart_Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myCartEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Best_Product Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bestProductTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My_Cart_Date".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myCartDateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My_Cart_Product One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.myCartProductOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My_Cart_Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myCartProductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment_COD".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentCodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment_Final".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentFinalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment_Popup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentPopupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Wishlist".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wishlistScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile_Setting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileSettingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My_Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myOrderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "track_Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.trackOrderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile_Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "App_Setting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.appSettingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivery_to".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deliveryToScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Deliver_to_Current_location".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deliverToCurrentLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Deliver_to_new_address".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deliverToNewAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivery_to One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deliveryToOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Deliver_to_Current_location One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deliverToCurrentLocationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Deliver_to_new_address One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.deliverToNewAddressOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}

import 'controller/signup_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';

class SignupLocationScreen extends GetWidget<SignupLocationController> {
  const SignupLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(20.h),
                child: Column(children: [
                  SizedBox(
                      height: 308.v,
                      width: 266.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                            SizedBox(
                                height: 200,
                                child: Image(image: AssetImage('assets/images/Group 2.png')
                                  // CustomImageView(
                                  //     imagePath: ImageConstant.imgLogo1,
                                  //     height: 202.v,
                                  //     width: 158.h,
                                  //     alignment: Alignment.topCenter),
                                  // CustomImageView(
                                  //     imagePath: ImageConstant.imgPureOrganic1,
                                  //     height: 212.v,
                                  //     width: 266.h,
                                  //     alignment: Alignment.bottomCenter)
                                  ,
                                )),
                          ])),
                  SizedBox(height: 64.v),
                  Text("lbl_enable_location".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 2.v),
                  Container(
                      width: 263.h,
                      margin: EdgeInsets.only(left: 34.h, right: 37.h),
                      child: Text("msg_we_will_need_your".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium)),
                  Spacer(),
                  CustomElevatedButton(
                      height: 50.v,
                      text: "lbl_enable_location2".tr,
                      onPressed: () {
                        onTapEnableLocation();
                      }),
                  SizedBox(height: 5.v),
                  Text("lbl_not_now".tr, style: theme.textTheme.bodyMedium),
                  SizedBox(height: 71.v)
                ]))));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapEnableLocation() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}

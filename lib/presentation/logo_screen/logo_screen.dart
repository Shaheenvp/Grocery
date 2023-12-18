import 'controller/logo_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LogoScreen extends GetWidget<LogoController> {
  const LogoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(child: Image(image: AssetImage('assets/images/Group 2.png'),fit: BoxFit.contain,))

          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SizedBox(height: 1.v),
          //     SizedBox(
          //       height: 333.v,
          //       width: 298.h,
          //       child: Stack(
          //         alignment: Alignment.bottomCenter,
          //         children: [
          //           CustomImageView(
          //             imagePath: ImageConstant.imgLogo1,
          //             height: 226.v,
          //             width: 176.h,
          //             alignment: Alignment.topCenter,
          //           ),
          //           CustomImageView(
          //             imagePath: ImageConstant.imgPureOrganic1,
          //             height: 237.v,
          //             width: 298.h,
          //             alignment: Alignment.bottomCenter,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

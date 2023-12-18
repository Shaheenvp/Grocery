import '../controller/home_controller.dart';
import '../models/stbannertwentyone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class StbannertwentyoneItemWidget extends StatelessWidget {
  StbannertwentyoneItemWidget(
    this.stbannertwentyoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StbannertwentyoneItemModel stbannertwentyoneItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.img1stBanner21,
      height: 125.v,
      width: 335.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}

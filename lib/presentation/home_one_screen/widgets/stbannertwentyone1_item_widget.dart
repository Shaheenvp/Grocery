import '../controller/home_one_controller.dart';
import '../models/stbannertwentyone1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Stbannertwentyone1ItemWidget extends StatelessWidget {
  Stbannertwentyone1ItemWidget(
    this.stbannertwentyone1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Stbannertwentyone1ItemModel stbannertwentyone1ItemModelObj;

  var controller = Get.find<HomeOneController>();

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

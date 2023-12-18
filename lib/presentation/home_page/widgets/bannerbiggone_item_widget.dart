import '../controller/home_controller.dart';
import '../models/bannerbiggone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class BannerbiggoneItemWidget extends StatelessWidget {
  BannerbiggoneItemWidget(
    this.bannerbiggoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BannerbiggoneItemModel bannerbiggoneItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgBannerBigg1,
      height: 135.v,
      width: 335.h,
      radius: BorderRadius.circular(
        5.h,
      ),
    );
  }
}

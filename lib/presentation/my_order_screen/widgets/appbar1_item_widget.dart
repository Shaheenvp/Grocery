import '../controller/my_order_controller.dart';
import '../models/appbar1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Appbar1ItemWidget extends StatelessWidget {
  Appbar1ItemWidget(
    this.appbar1ItemModelObj, {
    Key? key,
    this.onTapImgArrowLeftImage,
  }) : super(
          key: key,
        );

  Appbar1ItemModel appbar1ItemModelObj;

  var controller = Get.find<MyOrderController>();

  VoidCallback? onTapImgArrowLeftImage;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: appbar1ItemModelObj.arrowLeftImage!.value,
        height: 24.v,
        width: 14.h,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 41.v,
          bottom: 26.v,
        ),
        onTap: () {
          onTapImgArrowLeftImage!.call();
        },
      ),
    );
  }
}

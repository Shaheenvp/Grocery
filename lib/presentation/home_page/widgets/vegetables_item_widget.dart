import '../controller/home_controller.dart';
import '../models/vegetables_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class VegetablesItemWidget extends StatelessWidget {
  VegetablesItemWidget(
    this.vegetablesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VegetablesItemModel vegetablesItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84.h,
      child: Obx(
        () => CustomImageView(
          imagePath: vegetablesItemModelObj.image!.value,
          height: 60.v,
          width: 84.h,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 34.v,
          ),
        ),
      ),
    );
  }
}

import '../controller/home_one_controller.dart';
import '../models/vegetables1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class Vegetables1ItemWidget extends StatelessWidget {
  Vegetables1ItemWidget(
    this.vegetables1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Vegetables1ItemModel vegetables1ItemModelObj;

  var controller = Get.find<HomeOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 84.h,
      child: Obx(
        () => CustomImageView(
          imagePath: vegetables1ItemModelObj.image!.value,
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

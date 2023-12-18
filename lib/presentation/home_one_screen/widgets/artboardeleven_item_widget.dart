import '../controller/home_one_controller.dart';
import '../models/artboardeleven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class ArtboardelevenItemWidget extends StatelessWidget {
  ArtboardelevenItemWidget(
    this.artboardelevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtboardelevenItemModel artboardelevenItemModelObj;

  var controller = Get.find<HomeOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Obx(
        () => CustomImageView(
          imagePath: artboardelevenItemModelObj.artboardEleven!.value,
          height: 159.v,
          width: 251.h,
          radius: BorderRadius.circular(
            20.h,
          ),
          margin: EdgeInsets.only(right: 104.h),
        ),
      ),
    );
  }
}

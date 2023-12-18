import '../controller/home_controller.dart';
import '../models/twelve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class TwelveItemWidget extends StatelessWidget {
  TwelveItemWidget(
      this.twelveItemModelObj, {
        Key? key,
      }) : super(
    key: key,
  );

  TwelveItemModel twelveItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Row(
        children: [
          Expanded(
            child: CustomImageView(
              imagePath: twelveItemModelObj.artboardEleven!.value,
              width: 250,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

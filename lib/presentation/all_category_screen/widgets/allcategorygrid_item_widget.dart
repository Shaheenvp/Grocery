import '../controller/all_category_controller.dart';
import '../models/allcategorygrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

// ignore: must_be_immutable
class AllcategorygridItemWidget extends StatelessWidget {
  AllcategorygridItemWidget(
    this.allcategorygridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AllcategorygridItemModel allcategorygridItemModelObj;

  var controller = Get.find<AllCategoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 83.v),
          Obx(
            () => Text(
              allcategorygridItemModelObj.vegetablesText!.value,
              style: CustomTextStyles.labelLargeBlack900,
            ),
          ),
        ],
      ),
    );
  }
}

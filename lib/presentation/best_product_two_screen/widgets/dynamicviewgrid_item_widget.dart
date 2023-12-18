import '../controller/best_product_two_controller.dart';
import '../models/dynamicviewgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DynamicviewgridItemWidget extends StatelessWidget {
  DynamicviewgridItemWidget(
    this.dynamicviewgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamicviewgridItemModel dynamicviewgridItemModelObj;

  var controller = Get.find<BestProductTwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 116.v,
              width: 148.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 18.v,
                      width: 39.h,
                      margin: EdgeInsets.only(top: 5.v),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  dynamicviewgridItemModelObj.image1!.value,
                              height: 18.v,
                              width: 39.h,
                              alignment: Alignment.center,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Obx(
                                () => Text(
                                  dynamicviewgridItemModelObj.text1!.value,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 116.v,
                      width: 135.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  dynamicviewgridItemModelObj.image2!.value,
                              height: 93.v,
                              width: 127.h,
                              alignment: Alignment.bottomLeft,
                            ),
                          ),
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  dynamicviewgridItemModelObj.image3!.value,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.topRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.v),
            Container(
              height: 49.v,
              width: 114.h,
              margin: EdgeInsets.only(left: 9.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 111.h,
                      child: Obx(
                        () => Text(
                          dynamicviewgridItemModelObj.text2!.value,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Obx(
                        () => Text(
                          dynamicviewgridItemModelObj.text3!.value,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: dynamicviewgridItemModelObj.image4!.value,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 27.v,
                    width: 65.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 1.v),
                            padding: EdgeInsets.symmetric(horizontal: 20.h),
                            decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder2,
                            ),
                            child: Container(
                              height: 24.v,
                              width: 23.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                border: Border.all(
                                  color: appTheme.gray50001,
                                  width: 1.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 56.h,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              right: 4.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(
                                  () => Text(
                                    dynamicviewgridItemModelObj.text4!.value,
                                    style: CustomTextStyles.bodyLarge18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Obx(
                                    () => Text(
                                      dynamicviewgridItemModelObj.text5!.value,
                                      style: theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                ),
                                CustomIconButton(
                                  height: 27.v,
                                  width: 13.h,
                                  child: CustomImageView(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40.h),
                    child: Obx(
                      () => CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        child: CustomImageView(
                          imagePath:
                              dynamicviewgridItemModelObj.iconButton2!.value,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.v),
          ],
        ),
      ),
    );
  }
}

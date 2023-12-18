import '../controller/best_product_one_controller.dart';
import '../models/productcardgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardgridItemWidget extends StatelessWidget {
  ProductcardgridItemWidget(
    this.productcardgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardgridItemModel productcardgridItemModelObj;

  var controller = Get.find<BestProductOneController>();

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
              height: 152.v,
              width: 148.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
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
                                  productcardgridItemModelObj.closeImage!.value,
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
                                  productcardgridItemModelObj
                                      .discountText!.value,
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
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 70.h,
                      margin: EdgeInsets.only(left: 12.h),
                      child: Obx(
                        () => Text(
                          productcardgridItemModelObj.productName!.value,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath:
                          productcardgridItemModelObj.productImage!.value,
                      height: 122.adaptSize,
                      width: 122.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: productcardgridItemModelObj.shieldImage!.value,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.topRight,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 17.v,
              width: 35.h,
              margin: EdgeInsets.only(left: 9.h),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Obx(
                      () => Text(
                        productcardgridItemModelObj.priceText!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: productcardgridItemModelObj.priceImage!.value,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      alignment: Alignment.centerLeft,
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
                                    productcardgridItemModelObj
                                        .minusText!.value,
                                    style: CustomTextStyles.bodyLarge18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Obx(
                                    () => Text(
                                      productcardgridItemModelObj
                                          .oneText!.value,
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
                          imagePath: productcardgridItemModelObj
                              .groupIconButton!.value,
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

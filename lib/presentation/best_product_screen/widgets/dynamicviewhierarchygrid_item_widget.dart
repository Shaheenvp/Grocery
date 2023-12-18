import '../controller/best_product_controller.dart';
import '../models/dynamicviewhierarchygrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DynamicviewhierarchygridItemWidget extends StatelessWidget {
  DynamicviewhierarchygridItemWidget(
    this.dynamicviewhierarchygridItemModelObj, {
    Key? key,
    this.onTapBtnGroupIconButton,
  }) : super(
          key: key,
        );

  DynamicviewhierarchygridItemModel dynamicviewhierarchygridItemModelObj;

  var controller = Get.find<BestProductController>();

  VoidCallback? onTapBtnGroupIconButton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.v),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 18.v,
                  width: 39.h,
                  margin: EdgeInsets.only(top: 7.v),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: dynamicviewhierarchygridItemModelObj
                              .closeImage!.value,
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
                              dynamicviewhierarchygridItemModelObj
                                  .twentyFiveText!.value,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath:
                        dynamicviewhierarchygridItemModelObj.shieldImage!.value,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 86.h),
                  ),
                ),
              ],
            ),
            Obx(
              () => CustomImageView(
                imagePath: dynamicviewhierarchygridItemModelObj
                    .negativeTwentyFiveImage!.value,
                height: 93.v,
                width: 127.h,
              ),
            ),
            SizedBox(height: 5.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
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
                            dynamicviewhierarchygridItemModelObj
                                .freshOrganicTomatoText!.value,
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
                            dynamicviewhierarchygridItemModelObj
                                .thirtyText!.value,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => CustomImageView(
                        imagePath: dynamicviewhierarchygridItemModelObj
                            .closeImage1!.value,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 11.v),
            Row(
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
                                  dynamicviewhierarchygridItemModelObj
                                      .minusText!.value,
                                  style: CustomTextStyles.bodyLarge18,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Obx(
                                  () => Text(
                                    dynamicviewhierarchygridItemModelObj
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
                      onTap: () {
                        onTapBtnGroupIconButton!.call();
                      },
                      child: CustomImageView(
                        imagePath: dynamicviewhierarchygridItemModelObj
                            .groupIconButton!.value,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.v),
          ],
        ),
      ),
    );
  }
}

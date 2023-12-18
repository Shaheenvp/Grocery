import '../controller/home_one_controller.dart';
import '../models/dynamicview1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Dynamicview1ItemWidget extends StatelessWidget {
  Dynamicview1ItemWidget(
    this.dynamicview1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Dynamicview1ItemModel dynamicview1ItemModelObj;

  var controller = Get.find<HomeOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155.h,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.black900.withOpacity(0.1),
              width: 1.h,
            ),
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 228.v,
            width: 155.h,
            padding: EdgeInsets.symmetric(vertical: 9.v),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 18.v,
                    width: 39.h,
                    margin: EdgeInsets.only(top: 3.v),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                dynamicview1ItemModelObj.closeImage!.value,
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
                                dynamicview1ItemModelObj.twentyFiveText!.value,
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
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 206.v,
                    width: 138.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                dynamicview1ItemModelObj.shieldImage!.value,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.topRight,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => CustomImageView(
                                  imagePath: dynamicview1ItemModelObj
                                      .tomatoImage!.value,
                                  height: 93.v,
                                  width: 127.h,
                                  margin: EdgeInsets.only(left: 3.h),
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Container(
                                width: 111.h,
                                margin: EdgeInsets.only(left: 3.h),
                                child: Obx(
                                  () => Text(
                                    dynamicview1ItemModelObj.tomatoText!.value,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 17.v,
                                width: 27.h,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Obx(
                                        () => Text(
                                          dynamicview1ItemModelObj
                                              .thirtyText!.value,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                    ),
                                    Obx(
                                      () => CustomImageView(
                                        imagePath: dynamicview1ItemModelObj
                                            .thirtyCloseImage!.value,
                                        height: 14.adaptSize,
                                        width: 14.adaptSize,
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 27.v,
                                      width: 65.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20.h),
                                              decoration: AppDecoration
                                                  .outlineGray
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder2,
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Obx(
                                                    () => Text(
                                                      dynamicview1ItemModelObj
                                                          .minusText!.value,
                                                      style: CustomTextStyles
                                                          .bodyLarge18,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 2.v),
                                                    child: Obx(
                                                      () => Text(
                                                        dynamicview1ItemModelObj
                                                            .oneText!.value,
                                                        style: theme.textTheme
                                                            .bodyLarge,
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
                                            imagePath: dynamicview1ItemModelObj
                                                .group193IconButton!.value,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

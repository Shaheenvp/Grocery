import 'package:flutter/cupertino.dart';

import '../controller/home_controller.dart';
import '../models/dynamicview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DynamicviewItemWidget2 extends StatelessWidget {
  DynamicviewItemWidget2(
      this.dynamicviewItemModelObj, {
        Key? key,
      }) : super(
    key: key,
  );

  DynamicviewItemModel dynamicviewItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155.h,
      child: Align(
        alignment: Alignment.center,
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
            padding: EdgeInsets.symmetric(vertical: 7.v),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [

                ///  25%

                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 18.v,
                    width: 39.h,
                    margin: EdgeInsets.only(top: 6.v),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Obx(
                              () => CustomImageView(
                            imagePath:
                            dynamicviewItemModelObj.closeImage!.value,
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
                                dynamicviewItemModelObj.twentyFiveText!.value,
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
                    height: 209.v,
                    width: 139.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              ///  img

                              Container(

                                      child: Image(image: AssetImage('assets/images/img_orange_juicy_ri.png')),
                                    ),

                              SizedBox(height: 5.v),

                              /// discription

                              Container(
                                width: 111.h,
                                margin: EdgeInsets.only(left: 3.h),
                                child: Obx(
                                      () => Text(
                                    dynamicviewItemModelObj.tomatoText!.value,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ),

                              /// price

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
                                          dynamicviewItemModelObj
                                              .thirtyText!.value,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                    ),
                                    Obx(
                                          () => CustomImageView(
                                        imagePath: dynamicviewItemModelObj
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
                                    /// add
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
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Obx(
                                                        () => Text(
                                                      dynamicviewItemModelObj.minusText!.value,
                                                      style: CustomTextStyles.bodyLarge18,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: 2.v),
                                                    child: Obx(
                                                          () => Text(
                                                        dynamicviewItemModelObj.oneText!.value,
                                                        style: theme.textTheme.bodyLarge,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 27.v,
                                                    width: 13.h,
                                                    child: Center(child: Text('+',style: TextStyle(fontSize: 12),)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                    ///bag
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.h),
                                      child: Obx(
                                            () => CustomIconButton(
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          padding: EdgeInsets.all(4.h),
                                          child: CustomImageView(
                                            imagePath: dynamicviewItemModelObj
                                                .groupIconButton!.value,
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

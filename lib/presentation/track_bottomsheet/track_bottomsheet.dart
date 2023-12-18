import 'controller/track_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_elevated_button.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';

class TrackBottomsheet extends StatelessWidget {
  TrackBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  TrackController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 38.adaptSize,
                width: 38.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    19.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_john_doe".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        "lbl_delivery_expert".tr,
                        style: CustomTextStyles.bodySmallBlack900Light,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomIconButton(
                height: 38.adaptSize,
                width: 38.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.fillBlueGray,
                child: CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolsCall,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                children: [
                  SizedBox(
                    height: 110.v,
                    width: 28.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: 90.v,
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: appTheme.black900.withOpacity(0.53),
                                endIndent: 14.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(
                                14.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse47,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          radius: BorderRadius.circular(
                            14.h,
                          ),
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_big_bundle_grocery".tr,
                          style: CustomTextStyles.bodySmall12,
                        ),
                        Opacity(
                          opacity: 0.8,
                          child: Text(
                            "msg_4_5_km_away_from".tr,
                            style: CustomTextStyles.bodySmallBlack900,
                          ),
                        ),
                        SizedBox(height: 51.v),
                        Text(
                          "lbl_abhishiktha".tr,
                          style: CustomTextStyles.bodySmall12,
                        ),
                        Opacity(
                          opacity: 0.8,
                          child: Text(
                            "lbl_anchal_kollam".tr,
                            style: CustomTextStyles.bodySmallBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 29.v),
          CustomElevatedButton(
            height: 40.v,
            text: "lbl_order_complete".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL5,
            buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }
}

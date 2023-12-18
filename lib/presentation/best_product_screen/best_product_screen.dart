import '../best_product_screen/widgets/dynamicviewhierarchygrid_item_widget.dart';
import 'controller/best_product_controller.dart';
import 'models/dynamicviewhierarchygrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_icon_button.dart';
import 'package:mohammed_s_application12/widgets/custom_search_view.dart';

class BestProductScreen extends GetWidget<BestProductController> {
  const BestProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 41.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(right: 13.h),
                          child: Column(children: [
                            _buildArrowLeftRow(),
                            SizedBox(height: 16.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text("msg_best_selling_products".tr,
                                        style: CustomTextStyles
                                            .titleLargeSemiBold))),
                            SizedBox(height: 14.v),
                            SizedBox(
                                height: 1746.v,
                                width: 350.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 253.v),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 9.v),
                                              decoration: AppDecoration
                                                  .outlineBlack
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 3.v),
                                                    Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          98.v),
                                                              child: _buildCloseStack(
                                                                  twentyFiveText:
                                                                      "lbl_25"
                                                                          .tr)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVillainHydraP,
                                                              height: 93.v,
                                                              width: 74.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 1.h,
                                                                      top: 23
                                                                          .v)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgIconlyBoldHeart,
                                                              height:
                                                                  24.adaptSize,
                                                              width:
                                                                  24.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 9.h,
                                                                      bottom:
                                                                          92.v))
                                                        ]),
                                                    Container(
                                                        width: 62.h,
                                                        margin: EdgeInsets.only(
                                                            left: 12.h),
                                                        child: Text(
                                                            "msg_villain_hydra_100g"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Container(
                                                        height: 17.v,
                                                        width: 35.h,
                                                        margin: EdgeInsets.only(
                                                            left: 9.h),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Text(
                                                                      "lbl_550"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .labelLarge)),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgClosePrimary,
                                                                  height: 14
                                                                      .adaptSize,
                                                                  width: 14
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft)
                                                            ])),
                                                    SizedBox(height: 11.v),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                  height: 27.v,
                                                                  width: 65.h,
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Container(
                                                                                padding: EdgeInsets.symmetric(horizontal: 20.h),
                                                                                decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
                                                                                child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 5.h, right: 4.h),
                                                                            child: _buildText(dynamicText: "lbl".tr, dynamicText1: "lbl_1".tr))
                                                                      ])),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 40
                                                                              .h),
                                                                  child: CustomIconButton(
                                                                      height: 24
                                                                          .adaptSize,
                                                                      width: 24
                                                                          .adaptSize,
                                                                      padding: EdgeInsets
                                                                          .all(4
                                                                              .h),
                                                                      child: CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgGroup3)))
                                                            ]))
                                                  ]))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGreenFreshApp,
                                          height: 104.v,
                                          width: 178.h,
                                          alignment: Alignment.bottomLeft,
                                          margin:
                                              EdgeInsets.only(bottom: 92.v)),
                                      _buildDynamicViewHierarchyGrid(),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                              height: 228.v,
                                              width: 155.h,
                                              margin:
                                                  EdgeInsets.only(left: 12.h),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .center,
                                                        child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        2.h,
                                                                    vertical:
                                                                        9.v),
                                                            decoration: AppDecoration
                                                                .outlineBlack
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          3.v),
                                                                  _buildCloseStack(
                                                                      twentyFiveText:
                                                                          "lbl_25"
                                                                              .tr),
                                                                  SizedBox(
                                                                      height:
                                                                          98.v),
                                                                  Container(
                                                                      width:
                                                                          134.h,
                                                                      margin: EdgeInsets.only(
                                                                          left: 5
                                                                              .h),
                                                                      child: Text(
                                                                          "msg_fresh_organic_green"
                                                                              .tr,
                                                                          maxLines:
                                                                              2,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodySmall)),
                                                                  SizedBox(
                                                                      height:
                                                                          17.v,
                                                                      width:
                                                                          32.h,
                                                                      child: Stack(
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          children: [
                                                                            Align(
                                                                                alignment: Alignment.centerRight,
                                                                                child: Text("lbl_150".tr, style: theme.textTheme.labelLarge)),
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgClosePrimary,
                                                                                height: 14.adaptSize,
                                                                                width: 14.adaptSize,
                                                                                alignment: Alignment.centerLeft)
                                                                          ])),
                                                                  SizedBox(
                                                                      height:
                                                                          11.v),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Padding(
                                                                          padding: EdgeInsets.only(left: 12.h, right: 8.h),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                            SizedBox(
                                                                                height: 27.v,
                                                                                width: 65.h,
                                                                                child: Stack(alignment: Alignment.center, children: [
                                                                                  Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))),
                                                                                  Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(dynamicText: "lbl".tr, dynamicText1: "lbl_1".tr))
                                                                                ])),
                                                                            CustomIconButton(
                                                                                height: 24.adaptSize,
                                                                                width: 24.adaptSize,
                                                                                padding: EdgeInsets.all(4.h),
                                                                                child: CustomImageView(imagePath: ImageConstant.imgGroup3))
                                                                          ])))
                                                                ]))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgIconlyBoldHeart,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        alignment:
                                                            Alignment.topRight,
                                                        margin: EdgeInsets.only(
                                                            top: 9.v,
                                                            right: 4.h))
                                                  ])))
                                    ]))
                          ]))
                    ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftRow() {
    return Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.v,
              width: 14.h,
              margin: EdgeInsets.only(top: 9.v, bottom: 7.v),
              onTap: () {
                onTapImgArrowLeft();
              }),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "msg_search_your_needs".tr)))
        ]));
  }

  /// Section Widget
  Widget _buildDynamicViewHierarchyGrid() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 13.h, right: 1.h),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 229.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 25.h,
                    crossAxisSpacing: 25.h),
                physics: BouncingScrollPhysics(),
                itemCount: controller.bestProductModelObj.value
                    .dynamicviewhierarchygridItemList.value.length,
                itemBuilder: (context, index) {
                  DynamicviewhierarchygridItemModel model = controller
                      .bestProductModelObj
                      .value
                      .dynamicviewhierarchygridItemList
                      .value[index];
                  return DynamicviewhierarchygridItemWidget(model,
                      onTapBtnGroupIconButton: () {
                    onTapBtnGroupIconButton();
                  });
                }))));
  }

  /// Common widget
  Widget _buildCloseStack({required String twentyFiveText}) {
    return SizedBox(
        height: 18.v,
        width: 39.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 18.v,
              width: 39.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(twentyFiveText,
                      style: theme.textTheme.labelMedium!
                          .copyWith(color: theme.colorScheme.onPrimary))))
        ]));
  }

  /// Common widget
  Widget _buildText({
    required String dynamicText,
    required String dynamicText1,
  }) {
    return SizedBox(
        width: 56.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(dynamicText,
              style: CustomTextStyles.bodyLarge18
                  .copyWith(color: appTheme.black900)),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(dynamicText1,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.black900))),
          CustomIconButton(height: 27.v, width: 13.h, child: CustomImageView())
        ]));
  }

  /// Navigates to the bestProductTwoScreen when the action is triggered.
  onTapBtnGroupIconButton() {
    Get.toNamed(AppRoutes.bestProductTwoScreen);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}

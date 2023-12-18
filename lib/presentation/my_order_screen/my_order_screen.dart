import '../my_order_screen/widgets/appbar_item_widget.dart';
import 'controller/my_order_controller.dart';
import 'models/appbar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';

class MyOrderScreen extends GetWidget<MyOrderController> {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child:
            Scaffold(backgroundColor: appTheme.gray100, body: _buildAppBar()));
  }

  /// Section Widget
  Widget _buildAppBar() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 6.v);
        },
        itemCount: controller.myOrderModelObj.value.appbarItemList.value.length,
        itemBuilder: (context, index) {
          AppbarItemModel model =
              controller.myOrderModelObj.value.appbarItemList.value[index];
          return AppbarItemWidget(model, onTapArrowLeftImage: () {
            onTapArrowLeftImage();
          });
        }));
  }

  /// Common widget
  Widget _buildDetailsStack({required String detailsText}) {
    return SizedBox(
        height: 24.v,
        width: 67.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text(detailsText,
                  style: CustomTextStyles.bodyMedium13
                      .copyWith(color: appTheme.black900))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.centerRight)
        ]));
  }

  /// Common widget
  Widget _buildLocationRow({required String textLabel}) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgLocation,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(top: 2.v, bottom: 3.v)),
      Text(textLabel,
          style: CustomTextStyles.titleMediumSemiBold
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeftImage() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeftImage() {
    Get.back();
  }
}

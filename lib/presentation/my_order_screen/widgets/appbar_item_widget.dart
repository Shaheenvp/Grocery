import '../controller/my_order_controller.dart';
import '../models/appbar1_item_model.dart';
import '../models/appbar_item_model.dart';
import '../widgets/appbar1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_leading_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class AppbarItemWidget extends StatelessWidget {
  AppbarItemWidget(
    this.appbarItemModelObj, {
    Key? key,
    this.onTapArrowLeftImage,
  }) : super(
          key: key,
        );

  AppbarItemModel appbarItemModelObj;

  var controller = Get.find<MyOrderController>();

  VoidCallback? onTapArrowLeftImage;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: appbarItemModelObj.arrowLeftImage!.value,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 41.v,
          bottom: 26.v,
        ),
        onTap: () {
          onTapArrowLeftImage!.call();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_my_order".tr,
        margin: EdgeInsets.only(
          top: 42.v,
          bottom: 18.v,
        ),
      ),
      styleType: Style.bgShadow,
      // itemCount: appbarItemModelObj.appbar1ItemList!.value.length,
      // itemBuilder: (context, index) {
      //   Appbar1ItemModel model =
      //       appbarItemModelObj.appbar1ItemList!.value[index];
      //   return Appbar1ItemWidget(
      //     model,
      //     onTapImgArrowLeftImage: () {
      //       onTapImgArrowLeftImage();
      //     },
      //   );
      // },
    );
  }

  void onTapImgArrowLeftImage() {}
}

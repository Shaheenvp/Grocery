import '../all_category_screen/widgets/allcategorygrid_item_widget.dart';
import 'controller/all_category_controller.dart';
import 'models/allcategorygrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_search_view.dart';

class AllCategoryScreen extends GetWidget<AllCategoryController> {
  const AllCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 48.v),
                child: Column(children: [
                  _buildArrowLeftRow(),
                  SizedBox(height: 32.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("lbl_category".tr,
                              style: CustomTextStyles.titleLargeSemiBold))),
                  SizedBox(height: 25.v),
                  _buildAllCategoryGrid()
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
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
  Widget _buildAllCategoryGrid() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 132.v,
                crossAxisCount: 4,
                mainAxisSpacing: 17.h,
                crossAxisSpacing: 17.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .allCategoryModelObj.value.allcategorygridItemList.value.length,
            itemBuilder: (context, index) {
              AllcategorygridItemModel model = controller.allCategoryModelObj
                  .value.allcategorygridItemList.value[index];
              return AllcategorygridItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}

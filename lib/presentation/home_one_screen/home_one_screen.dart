import '../home_one_screen/widgets/artboardeleven_item_widget.dart';
import '../home_one_screen/widgets/bannerbiggone1_item_widget.dart';
import '../home_one_screen/widgets/dynamicview1_item_widget.dart';
import '../home_one_screen/widgets/productcard_item_widget.dart';
import '../home_one_screen/widgets/stbannertwentyone1_item_widget.dart';
import '../home_one_screen/widgets/vegetables1_item_widget.dart';
import 'controller/home_one_controller.dart';
import 'models/artboardeleven_item_model.dart';
import 'models/bannerbiggone1_item_model.dart';
import 'models/dynamicview1_item_model.dart';
import 'models/productcard_item_model.dart';
import 'models/stbannertwentyone1_item_model.dart';
import 'models/vegetables1_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeOneScreen extends GetWidget<HomeOneController> {
  const HomeOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 13.v),
                      _buildLogoWithNameOne(),
                      SizedBox(height: 4.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.h),
                            child: CustomSearchView(
                                controller: controller.searchController,
                                hintText: "msg_search_your_needs".tr)),
                        SizedBox(height: 22.v),
                        _buildStBannerTwentyOne(),
                        SizedBox(height: 23.v),
                        _buildCategory1(),
                        SizedBox(height: 24.v),
                        _buildOffers(),
                        SizedBox(height: 29.v),
                        _buildBestSellingProducts(),
                        SizedBox(height: 33.v),
                        _buildBannerBiggOne(),
                        SizedBox(height: 15.v),
                        _buildHomeOne()
                      ])))
                    ]))));
  }

  /// Section Widget
  Widget _buildLogoWithNameOne() {
    return Padding(
        padding: EdgeInsets.only(right: 20.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgLogoWithName1,
              height: 91.v,
              width: 190.h),
          CustomAppBar(height: 91.v, actions: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 2.v),
                child: Column(children: [
                  AppbarTrailingImage(imagePath: ImageConstant.imgVector),
                  SizedBox(height: 4.v),
                  AppbarTrailingImage(
                      imagePath: ImageConstant.imgVectorPrimary,
                      margin: EdgeInsets.symmetric(horizontal: 7.h))
                ]))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildStBannerTwentyOne() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(children: [
          Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 125.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  }),
              itemCount: controller.homeOneModelObj.value
                  .stbannertwentyone1ItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                Stbannertwentyone1ItemModel model = controller.homeOneModelObj
                    .value.stbannertwentyone1ItemList.value[index];
                return Stbannertwentyone1ItemWidget(model);
              })),
          SizedBox(height: 16.v),
          Obx(() => SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller.homeOneModelObj.value
                      .stbannertwentyone1ItemList.value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                      spacing: 4,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.lightGreen100,
                      dotHeight: 8.v,
                      dotWidth: 8.h))))
        ]));
  }

  /// Section Widget
  Widget _buildCategory1() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 5.h, right: 4.h),
              child: _buildPopularProducts(
                  popularProductsText: "lbl_category".tr,
                  viewAllText: "lbl_view_all".tr)),
          SizedBox(height: 5.v),
          SizedBox(
              height: 97.v,
              child: Obx(() => ListView.separated(
                  padding: EdgeInsets.only(left: 1.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 1.h);
                  },
                  itemCount: controller
                      .homeOneModelObj.value.vegetables1ItemList.value.length,
                  itemBuilder: (context, index) {
                    Vegetables1ItemModel model = controller
                        .homeOneModelObj.value.vegetables1ItemList.value[index];
                    return Vegetables1ItemWidget(model);
                  })))
        ]));
  }

  /// Section Widget
  Widget _buildOffers() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text("lbl_offers".tr,
              style: CustomTextStyles.titleMediumPrimary)),
      SizedBox(height: 7.v),
      Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 159.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex1.value = index;
                  }),
              itemCount: controller
                  .homeOneModelObj.value.artboardelevenItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                ArtboardelevenItemModel model = controller
                    .homeOneModelObj.value.artboardelevenItemList.value[index];
                return ArtboardelevenItemWidget(model);
              }))),
      SizedBox(height: 15.v),
      Align(
          alignment: Alignment.center,
          child: Obx(() => SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex1.value,
                  count: controller.homeOneModelObj.value.artboardelevenItemList
                      .value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                      spacing: 4,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.lightGreen100,
                      dotHeight: 8.v,
                      dotWidth: 8.h)))))
    ]);
  }

  /// Section Widget
  Widget _buildBestSellingProducts() {
    return SizedBox(
        height: 261.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text("msg_best_selling_products".tr,
                      style: CustomTextStyles.titleMediumSemiBold18))),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v, right: 20.h),
                  child: Text("lbl_view_all".tr,
                      style: CustomTextStyles.bodySmall12))),
          CustomImageView(
              imagePath: ImageConstant.imgIconlyBoldHeart,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 44.v, right: 26.h)),
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 261.v,
                  child: Obx(() => ListView.separated(
                      padding:
                          EdgeInsets.only(left: 20.h, top: 33.v, right: 20.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 20.h);
                      },
                      itemCount: controller.homeOneModelObj.value
                          .dynamicview1ItemList.value.length,
                      itemBuilder: (context, index) {
                        Dynamicview1ItemModel model = controller.homeOneModelObj
                            .value.dynamicview1ItemList.value[index];
                        return Dynamicview1ItemWidget(model);
                      })))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 14.v, bottom: 192.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.h, vertical: 8.v),
                  decoration: AppDecoration.outlineBlack9001,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgHome,
                            height: 24.v,
                            width: 22.h,
                            margin: EdgeInsets.only(
                                left: 5.h, top: 8.v, bottom: 7.v)),
                        Spacer(flex: 32),
                        Container(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            margin: EdgeInsets.only(bottom: 6.v),
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgBag,
                                  height: 24.v,
                                  width: 23.h,
                                  alignment: Alignment.bottomLeft),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                      width: 14.adaptSize,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5.h, vertical: 1.v),
                                      decoration: AppDecoration
                                          .fillOnPrimaryContainer
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Text("lbl_1".tr,
                                          style: theme.textTheme.labelSmall)))
                            ])),
                        Spacer(flex: 37),
                        CustomImageView(
                            imagePath: ImageConstant.imgHeart,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            margin: EdgeInsets.only(top: 4.v, bottom: 5.v),
                            onTap: () {
                              onTapImgHeart();
                            }),
                        Spacer(flex: 30),
                        CustomImageView(
                            imagePath: ImageConstant.imgProfile,
                            height: 29.adaptSize,
                            width: 29.adaptSize,
                            margin: EdgeInsets.only(top: 6.v, bottom: 4.v),
                            onTap: () {
                              onTapImgProfile();
                            })
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildBannerBiggOne() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(children: [
          Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 135.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex2.value = index;
                  }),
              itemCount: controller
                  .homeOneModelObj.value.bannerbiggone1ItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                Bannerbiggone1ItemModel model = controller
                    .homeOneModelObj.value.bannerbiggone1ItemList.value[index];
                return Bannerbiggone1ItemWidget(model);
              })),
          SizedBox(height: 15.v),
          Obx(() => SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex2.value,
                  count: controller.homeOneModelObj.value.bannerbiggone1ItemList
                      .value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                      spacing: 4,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.lightGreen100,
                      dotHeight: 8.v,
                      dotWidth: 8.h))))
        ]));
  }

  /// Section Widget
  Widget _buildHomeOne() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v),
        decoration: AppDecoration.fillGray,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: _buildPopularProducts(
                  popularProductsText: "msg_popular_products".tr,
                  viewAllText: "lbl_view_all".tr)),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Obx(() => GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 229.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 25.h,
                      crossAxisSpacing: 25.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller
                      .homeOneModelObj.value.productcardItemList.value.length,
                  itemBuilder: (context, index) {
                    ProductcardItemModel model = controller
                        .homeOneModelObj.value.productcardItemList.value[index];
                    return ProductcardItemWidget(model);
                  }))),
          SizedBox(height: 70.v)
        ]));
  }

  /// Common widget
  Widget _buildPopularProducts({
    required String popularProductsText,
    required String viewAllText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(popularProductsText,
              style: CustomTextStyles.titleMediumPrimary
                  .copyWith(color: theme.colorScheme.primary)),
          Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 6.v),
              child: Text(viewAllText,
                  style: CustomTextStyles.bodySmallPrimary
                      .copyWith(color: theme.colorScheme.primary)))
        ]);
  }

  /// Navigates to the wishlistScreen when the action is triggered.
  onTapImgHeart() {
    Get.toNamed(
      AppRoutes.wishlistScreen,
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgProfile() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}

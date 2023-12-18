import 'package:mohammed_s_application12/presentation/home_page/models/dynamicview_item_widget2.dart';
import 'package:mohammed_s_application12/presentation/notification_screen/notification_screen.dart';
import '../home_page/widgets/bannerbiggone_item_widget.dart';
import '../home_page/widgets/dynamicview_item_widget.dart';
import '../home_page/widgets/productgrid_item_widget.dart';
import '../home_page/widgets/stbannertwentyone_item_widget.dart';
import '../home_page/widgets/twelve_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/bannerbiggone_item_model.dart';
import 'models/dynamicview_item_model.dart';
import 'models/home_model.dart';
import 'models/productgrid_item_model.dart';
import 'models/stbannertwentyone_item_model.dart';
import 'models/twelve_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildLogoWithNameOne(),
            SizedBox(
              height: 8,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: CustomSearchView(
                    controller: controller.searchController,
                    hintText: "msg_search_your_needs".tr)),
            SizedBox(
              height: 8,
            ),
            _buildBannerSlider(),
            SizedBox(
              height: 8,
            ),
            _buildCategoryList(context),
            SizedBox(
              height: 8,
            ),
            _buildOffersSlider(),
            SizedBox(
              height: 8,
            ),
            _buildProductCard(),
            SizedBox(
              height: 20,
            ),
            _buildBannerSlider1(),
            SizedBox(
              height: 20,
            ),
            _buildProductGrid(),
            SizedBox(
              height: 5,
            ),

          ],
        ),
      ),
    ));
  }

  /// Section Widget
  Widget _buildLogoWithNameOne() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomImageView(
            imagePath: ImageConstant.imgLogoWithName1,
            height: 60,
            width: 180,
          ),
        ),
        SizedBox(width: 10), // Add spacing if needed
        IconButton(
            onPressed: () {
              Get.to(NotificationScreen());
            },
            icon: Icon(
              Icons.notifications_none,
              color: Colors.green,
            ))
      ],
    );
  }

  /// Section Widget
  Widget _buildBannerSlider() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 180.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  }),
              itemCount: controller
                  .homeModelObj.value.stbannertwentyoneItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                StbannertwentyoneItemModel model = controller
                    .homeModelObj.value.stbannertwentyoneItemList.value[index];
                return StbannertwentyoneItemWidget(model);
              })),
          SizedBox(height: 16.v),
          Obx(() => SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller.homeModelObj.value.stbannertwentyoneItemList
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
  Widget _buildCategoryList(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('Category',style: TextStyle(color: Color(0xff4F7B39),fontWeight: FontWeight.w600,fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('View all',style: TextStyle(color: Color(0xff4F7B39),fontWeight: FontWeight.w500,fontSize: 12),),
          ),
        ],),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 2,),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  height: 96,
                  width:74,
                  decoration: BoxDecoration(
                    color: Color(0xffE4EFDE),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          child: Image(image: AssetImage('assets/images/v1.png'),fit: BoxFit.cover,)),
                      SizedBox(height: 15,),
                      Text('Vegitables',style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*.023),)
                 ] ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 96,
                  width:74,
                  decoration: BoxDecoration(
                    color: Color(0xffE4EFDE),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          child: Image(image: AssetImage('assets/images/img_colorful_fruits.png'),fit: BoxFit.cover,)),
                      SizedBox(height: 15,),
                      Text('Fruits',style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*.023),)
                 ] ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 96,
                  width:74,
                  decoration: BoxDecoration(
                    color: Color(0xffE4EFDE),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          child: Image(image: AssetImage('assets/images/img_nuts_walnut_pea.png'),fit: BoxFit.cover,)),
                      SizedBox(height: 15,),
                      Text('Dry Fruits',style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*.023),)
                 ] ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 96,
                  width:74,
                  decoration: BoxDecoration(
                    color: Color(0xffE4EFDE),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                      children: [
                        SizedBox(
                            height: 50,
                            child: Image(image: AssetImage('assets/images/img_whole_chicken_s.png'),fit: BoxFit.cover,)),
                        SizedBox(height: 15,),
                        Text('Meat',style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*.023),)
                      ] ),
                ),
              ),


            ],
          ),
        ),
      ],
    );
  }



  /// Section Widget
  Widget _buildOffersSlider() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
          padding: EdgeInsets.only(left: 15,bottom: 7),
          child: Text("Offers",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:  Color(0xff4F7B39)),)
      ),
      SizedBox(height: 7.v),
      Padding(
          padding: EdgeInsets.only(left: 10),
          child: Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height:140,
                  autoPlay: true,
                  initialPage: 0,
                  viewportFraction:.7,
                  // enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex1.value = index;
                  }),
              itemCount:
                  controller.homeModelObj.value.twelveItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                TwelveItemModel model =
                    controller.homeModelObj.value.twelveItemList.value[index];
                return TwelveItemWidget(model);
              }))),
      SizedBox(height: 15.v),
      Align(
          alignment: Alignment.center,
          child: Obx(() => SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex1.value,
                  count:
                      controller.homeModelObj.value.twelveItemList.value.length,
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
  Widget _buildProductCard() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0,bottom: 8,top: 6),
              child: Text('Best Selling Products',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('View all',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 12),),
            ),
          ],),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                  height: 228.v,
                  width: 155.h,
                  child:
                  Stack(
                    // alignment: Alignment.topCenter,
                      children: [
                        // Icon(Icons.favorite,color: Colors.grey,),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 228.v,
                            child: Obx(() => ListView.separated(
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return
                                    SizedBox(width: 20.h);
                                },
                                itemCount: controller
                                    .homeModelObj.value.dynamicviewItemList.value.length,
                                itemBuilder: (context, index) {
                                  DynamicviewItemModel model = controller.homeModelObj
                                      .value.dynamicviewItemList.value[index];
                                  return DynamicviewItemWidget(model);
                                })))),
                        Align(
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgIconlyBoldHeart,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(top: 11.v, right: 5.h)
                          ),
                        ),

                      ])
              ),
              SizedBox(width: 30,),
              SizedBox(
                  height: 228.v,
                  width: 155.h,
                  child:
                  Stack(
                    // alignment: Alignment.topCenter,
                      children: [
                        // Icon(Icons.favorite,color: Colors.grey,),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 228.v,
                                child: Obx(() => ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return
                                        SizedBox(width: 20.h);
                                    },
                                    itemCount: controller
                                        .homeModelObj.value.dynamicviewItemList.value.length,
                                    itemBuilder: (context, index) {
                                      DynamicviewItemModel model = controller.homeModelObj
                                          .value.dynamicviewItemList.value[index];
                                      return DynamicviewItemWidget2(model);
                                    })))),
                        Align(
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgIconlyBoldHeart,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(top: 11.v, right: 5.h)
                          ),
                        ),

                      ])
              ),

            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBannerSlider1() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 180.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex2.value = index;
                  }),
              itemCount: controller
                  .homeModelObj.value.bannerbiggoneItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                BannerbiggoneItemModel model = controller
                    .homeModelObj.value.bannerbiggoneItemList.value[index];
                return BannerbiggoneItemWidget(model);
              })),
          SizedBox(height: 15.v),
          Obx(() => SizedBox(
              height: 8.v,
              child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex2.value,
                  count: controller
                      .homeModelObj.value.bannerbiggoneItemList.value.length,
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
  Widget _buildProductGrid() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Popular Products',style: TextStyle(color: Color(0xff4F7B39),fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('View all',style: TextStyle(color: Color(0xff4F7B39),fontWeight: FontWeight.w500,fontSize: 12),),
            ),
          ],),
        Padding(
            padding: EdgeInsets.only(left: 10),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 520,
                    crossAxisCount: 1,
                    // mainAxisSpacing: 25.h,
                    // crossAxisSpacing: 25.h
                ),
                itemCount:
                    controller.homeModelObj.value.productgridItemList.value.length,
                itemBuilder: (context, index) {
                  ProductgridItemModel model = controller
                      .homeModelObj.value.productgridItemList.value[index];
                  return DynamicviewItemWidget3(DynamicviewItemModel());
                }
                )
            )
        ),
      ],
    );
  }

  /// Navigates to the allCategoryScreen when the action is triggered.
  onTapTxtViewAll() {
    Get.toNamed(
      AppRoutes.allCategoryScreen,
    );
  }

  /// Navigates to the bestProductScreen when the action is triggered.
  onTapTxtViewAll1() {
    Get.toNamed(
      AppRoutes.bestProductScreen,
    );
  }

  /// Navigates to the bestProductOneScreen when the action is triggered.
  onTapTxtViewAll2() {
    Get.toNamed(
      AppRoutes.bestProductOneScreen,
    );
  }
}

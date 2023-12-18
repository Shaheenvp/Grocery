import 'controller/wishlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/home_page/home_page.dart';
import 'package:mohammed_s_application12/presentation/my_cart_page/my_cart_page.dart';
import 'package:mohammed_s_application12/widgets/app_bar/appbar_title.dart';
import 'package:mohammed_s_application12/widgets/app_bar/custom_app_bar.dart';
import 'package:mohammed_s_application12/widgets/custom_bottom_bar.dart';

class WishlistScreen extends GetWidget<WishlistController> {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final h = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _buildWishlistAppBar(),
            SizedBox(height: h*.2,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      margin: EdgeInsets.only(
                        top: 64.v,
                        bottom: 109.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 183.v,
                      width: 131.h,
                      margin: EdgeInsets.only(left: 17.h),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEmptyCart1,
                            height: 183,
                            width: 131.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 99.h,
                              margin: EdgeInsets.fromLTRB(
                                  22.h, 6.v, 9.h, 156.v),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 4.adaptSize,
                                    width: 4.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 12.v,
                                      bottom: 3.v,
                                    ),
                                    decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme.primary,
                                      borderRadius:
                                      BorderRadius.circular(
                                        2.h,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "lbl2".tr,
                                    style:
                                    CustomTextStyles.bodyLargeInter,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 6.adaptSize,
                      width: 6.adaptSize,
                      margin: EdgeInsets.only(
                        left: 6.h,
                        top: 127.v,
                        bottom: 50.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          3.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        top: 69.v,
                        bottom: 104.v,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 36.v),
                Text(
                  "msg_your_wishlist_is".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(
                  width: 213.h,
                  child: Text(
                    "msg_it_seems_like_you2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallLight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildWishlistAppBar() {
    return CustomAppBar(
      height: 64.v,
      title: AppbarTitle(
        text: "lbl_wishlist".tr,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 26.v,
          bottom: 1.v,
        ),
      ),
      styleType: Style.bgShadow_1,
    );
  }

  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Bag:
        return AppRoutes.myCartPage;
      case BottomBarEnum.Heart:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.myCartPage:
        return MyCartPage();
      default:
        return DefaultWidget();
    }
  }
}

import 'stbannertwentyone_item_model.dart';
import '../../../core/app_export.dart';
import 'vegetables_item_model.dart';
import 'twelve_item_model.dart';
import 'dynamicview_item_model.dart';
import 'bannerbiggone_item_model.dart';
import 'productgrid_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<StbannertwentyoneItemModel>> stbannertwentyoneItemList =
      Rx(List.generate(1, (index) => StbannertwentyoneItemModel()));

  Rx<List<VegetablesItemModel>> vegetablesItemList = Rx([
    VegetablesItemModel(image: ImageConstant.imgBasketFullVegetables.obs),
    VegetablesItemModel(image: ImageConstant.imgWholeChickenS.obs)
  ]);

  Rx<List<TwelveItemModel>> twelveItemList = Rx([
    TwelveItemModel(artboardEleven: ImageConstant.imgArtboard11.obs),
    TwelveItemModel(artboardEleven: ImageConstant.imgOrangeBanner1.obs)
  ]);

  Rx<List<DynamicviewItemModel>> dynamicviewItemList = Rx([
    DynamicviewItemModel(
        closeImage: ImageConstant.imgClose.obs,
        twentyFiveText: "-25%".obs,
        shieldImage: ImageConstant.imgIconlyBoldHeart.obs,
        tomatoImage: ImageConstant.imgTomatoes1.obs,
        tomatoText: "Fresh Organic Tomato \r\n500g".obs,
        thirtyText: "30".obs,
        thirtyCloseImage: ImageConstant.imgClosePrimary.obs,
        minusText: "-".obs,
        oneText: "1".obs,
        groupIconButton: ImageConstant.imgGroup3.obs)
  ]);

  Rx<List<BannerbiggoneItemModel>> bannerbiggoneItemList =
      Rx(List.generate(1, (index) => BannerbiggoneItemModel()));

  Rx<List<ProductgridItemModel>> productgridItemList = Rx([
    ProductgridItemModel(
        discountText: "-25%".obs,
        weight: "Fresh Cashew \r\n500g".obs,
        priceText: "400".obs,
        additionalImage: ImageConstant.imgCashews1.obs,
        minusText: "-".obs,
        quantityText: "1".obs)
  ]);
}


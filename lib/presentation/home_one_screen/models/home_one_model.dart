import 'stbannertwentyone1_item_model.dart';
import '../../../core/app_export.dart';
import 'vegetables1_item_model.dart';
import 'artboardeleven_item_model.dart';
import 'dynamicview1_item_model.dart';
import 'bannerbiggone1_item_model.dart';
import 'productcard_item_model.dart';

/// This class defines the variables used in the [home_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeOneModel {
  Rx<List<Stbannertwentyone1ItemModel>> stbannertwentyone1ItemList =
      Rx(List.generate(1, (index) => Stbannertwentyone1ItemModel()));

  Rx<List<Vegetables1ItemModel>> vegetables1ItemList = Rx([
    Vegetables1ItemModel(image: ImageConstant.imgBasketFullVegetables.obs),
    Vegetables1ItemModel(image: ImageConstant.imgWholeChickenS.obs)
  ]);

  Rx<List<ArtboardelevenItemModel>> artboardelevenItemList = Rx([
    ArtboardelevenItemModel(artboardEleven: ImageConstant.imgArtboard11.obs),
    ArtboardelevenItemModel(artboardEleven: ImageConstant.imgOrangeBanner1.obs)
  ]);

  Rx<List<Dynamicview1ItemModel>> dynamicview1ItemList = Rx([
    Dynamicview1ItemModel(
        closeImage: ImageConstant.imgClose.obs,
        twentyFiveText: "-25%".obs,
        shieldImage: ImageConstant.imgIconlyBoldHeart.obs,
        tomatoImage: ImageConstant.imgTomatoes1.obs,
        tomatoText: "Fresh Organic Tomato \r\n500g".obs,
        thirtyText: "30".obs,
        thirtyCloseImage: ImageConstant.imgClosePrimary.obs,
        minusText: "-".obs,
        oneText: "1".obs,
        group193IconButton: ImageConstant.imgGroup3.obs)
  ]);

  Rx<List<Bannerbiggone1ItemModel>> bannerbiggone1ItemList =
      Rx(List.generate(1, (index) => Bannerbiggone1ItemModel()));

  Rx<List<ProductcardItemModel>> productcardItemList = Rx([
    ProductcardItemModel(
        discountText: "-25%".obs,
        productName: "Fresh Cashew \r\n500g".obs,
        productPrice: "400".obs,
        productImage: ImageConstant.imgCashews1.obs,
        minusText: "-".obs,
        quantityText: "1".obs)
  ]);
}

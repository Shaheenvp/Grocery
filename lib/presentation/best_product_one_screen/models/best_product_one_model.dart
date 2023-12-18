import '../../../core/app_export.dart';
import 'productcardgrid_item_model.dart';

/// This class defines the variables used in the [best_product_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BestProductOneModel {
  Rx<List<ProductcardgridItemModel>> productcardgridItemList = Rx([
    ProductcardgridItemModel(
        closeImage: ImageConstant.imgClose.obs,
        discountText: "-25%".obs,
        productName: "Fresh Cashew\r\n500g".obs,
        productImage: ImageConstant.imgCashews1.obs,
        shieldImage: ImageConstant.imgIconlyBoldHeart.obs,
        priceText: "400".obs,
        priceImage: ImageConstant.imgClosePrimary.obs,
        minusText: "-".obs,
        oneText: "1".obs,
        groupIconButton: ImageConstant.imgGroup3.obs),
    ProductcardgridItemModel(
        closeImage: ImageConstant.imgClose.obs,
        discountText: "-25%".obs,
        productName: "Ripple Tea \r\n500g".obs,
        productImage: ImageConstant.imgRipplePreDustTea250g.obs,
        shieldImage: ImageConstant.imgIconlyBoldHeart.obs,
        priceText: "120".obs,
        priceImage: ImageConstant.imgClosePrimary.obs,
        minusText: "-".obs,
        oneText: "1".obs,
        groupIconButton: ImageConstant.imgGroup3.obs),
    ProductcardgridItemModel(
        closeImage: ImageConstant.imgClose.obs,
        discountText: "-25%".obs,
        productName: "Fresh Organic Watermelon\n500g".obs,
        productImage: ImageConstant.imgWatermelon1.obs,
        shieldImage: ImageConstant.imgIconlyBoldHeart.obs,
        priceText: "20".obs,
        priceImage: ImageConstant.imgClosePrimary.obs,
        minusText: "-".obs,
        oneText: "1".obs,
        groupIconButton: ImageConstant.imgGroup3.obs),
    ProductcardgridItemModel(
        minusText: "-".obs,
        oneText: "1".obs,
        groupIconButton: ImageConstant.imgGroup3.obs)
  ]);
}

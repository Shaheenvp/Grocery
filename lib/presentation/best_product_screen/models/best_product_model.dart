import '../../../core/app_export.dart';
import 'dynamicviewhierarchygrid_item_model.dart';

/// This class defines the variables used in the [best_product_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BestProductModel {
  Rx<List<DynamicviewhierarchygridItemModel>> dynamicviewhierarchygridItemList =
      Rx([
    DynamicviewhierarchygridItemModel(
        closeImage: ImageConstant.imgClose.obs,
        twentyFiveText: "-25%".obs,
        shieldImage: ImageConstant.imgIconlyBoldHeart.obs,
        negativeTwentyFiveImage: ImageConstant.imgTomatoes1.obs,
        freshOrganicTomatoText: "Fresh Organic Tomato \r\n500g".obs,
        thirtyText: "30".obs,
        closeImage1: ImageConstant.imgClosePrimary.obs,
        minusText: "-".obs,
        oneText: "1".obs,
        groupIconButton: ImageConstant.imgGroup3.obs),
    DynamicviewhierarchygridItemModel(
        closeImage: ImageConstant.imgClose.obs,
        twentyFiveText: "-25%".obs,
        shieldImage: ImageConstant.imgIconlyBoldHeart.obs,
        negativeTwentyFiveImage: ImageConstant.imgMeat1.obs,
        freshOrganicTomatoText: "Fresh Meat \r\n500g".obs,
        thirtyText: "100".obs,
        closeImage1: ImageConstant.imgClosePrimary.obs,
        minusText: "-".obs,
        oneText: "1".obs,
        groupIconButton: ImageConstant.imgGroup3.obs),
    DynamicviewhierarchygridItemModel(
        closeImage: ImageConstant.imgClose.obs,
        twentyFiveText: "-25%".obs,
        shieldImage: ImageConstant.imgIconlyBoldHeart.obs,
        negativeTwentyFiveImage: ImageConstant.img9d85cc2af89dd5b.obs,
        freshOrganicTomatoText: "Fresh Honey \r\n500g".obs,
        thirtyText: "150".obs,
        closeImage1: ImageConstant.imgClosePrimary.obs,
        minusText: "-".obs,
        oneText: "1".obs,
        groupIconButton: ImageConstant.imgGroup3.obs)
  ]);
}

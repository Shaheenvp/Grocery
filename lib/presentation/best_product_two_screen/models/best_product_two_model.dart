import '../../../core/app_export.dart';
import 'dynamicviewgrid_item_model.dart';

/// This class defines the variables used in the [best_product_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BestProductTwoModel {
  Rx<List<DynamicviewgridItemModel>> dynamicviewgridItemList = Rx([
    DynamicviewgridItemModel(
        image1: ImageConstant.imgClose.obs,
        text1: "-25%".obs,
        image2: ImageConstant.imgTomatoes1.obs,
        image3: ImageConstant.imgIconlyBoldHeart.obs,
        text2: "Fresh Organic Tomato \r\n500g".obs,
        text3: "30".obs,
        image4: ImageConstant.imgClosePrimary.obs,
        text4: "-".obs,
        text5: "1".obs,
        iconButton2: ImageConstant.imgGroup3.obs),
    DynamicviewgridItemModel(
        image1: ImageConstant.imgClose.obs,
        text1: "-25%".obs,
        image2: ImageConstant.imgMeat1.obs,
        image3: ImageConstant.imgIconlyBoldHeart.obs,
        text2: "Fresh Meat \r\n500g".obs,
        text3: "100".obs,
        image4: ImageConstant.imgClosePrimary.obs,
        text4: "-".obs,
        text5: "1".obs,
        iconButton2: ImageConstant.imgGroup3.obs),
    DynamicviewgridItemModel(
        text2: "Fresh Organic Oragne \r\n500g".obs,
        text3: "50".obs,
        image4: ImageConstant.imgClosePrimary.obs,
        text4: "-".obs,
        text5: "1".obs,
        iconButton2: ImageConstant.imgGroup3.obs),
    DynamicviewgridItemModel(
        text5: "1".obs, iconButton2: ImageConstant.imgGroup3.obs),
    DynamicviewgridItemModel(
        text5: "1".obs, iconButton2: ImageConstant.imgGroup3.obs)
  ]);
}

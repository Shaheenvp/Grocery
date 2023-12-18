import '../../../core/app_export.dart';

/// This class is used in the [vegetables1_item_widget] screen.
class Vegetables1ItemModel {
  Vegetables1ItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgBasketFullVegetables);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [vegetables_item_widget] screen.
class VegetablesItemModel {
  VegetablesItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgBasketFullVegetables);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? id;
}

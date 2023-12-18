import '../../../core/app_export.dart';

/// This class is used in the [productgrid_item_widget] screen.
class ProductgridItemModel {
  ProductgridItemModel({
    this.discountText,
    this.weight,
    this.priceText,
    this.additionalImage,
    this.minusText,
    this.quantityText,
    this.id,
  }) {
    discountText = discountText ?? Rx("-25%");
    weight = weight ?? Rx("Fresh Cashew \r\n500g");
    priceText = priceText ?? Rx("400");
    additionalImage = additionalImage ?? Rx(ImageConstant.imgCashews1);
    minusText = minusText ?? Rx("-");
    quantityText = quantityText ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? discountText;

  Rx<String>? weight;

  Rx<String>? priceText;

  Rx<String>? additionalImage;

  Rx<String>? minusText;

  Rx<String>? quantityText;

  Rx<String>? id;
}

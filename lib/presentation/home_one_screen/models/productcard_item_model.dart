import '../../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {
  ProductcardItemModel({
    this.discountText,
    this.productName,
    this.productPrice,
    this.productImage,
    this.minusText,
    this.quantityText,
    this.id,
  }) {
    discountText = discountText ?? Rx("-25%");
    productName = productName ?? Rx("Fresh Cashew \r\n500g");
    productPrice = productPrice ?? Rx("400");
    productImage = productImage ?? Rx(ImageConstant.imgCashews1);
    minusText = minusText ?? Rx("-");
    quantityText = quantityText ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? discountText;

  Rx<String>? productName;

  Rx<String>? productPrice;

  Rx<String>? productImage;

  Rx<String>? minusText;

  Rx<String>? quantityText;

  Rx<String>? id;
}

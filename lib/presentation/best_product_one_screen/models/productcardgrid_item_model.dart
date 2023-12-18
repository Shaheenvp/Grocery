import '../../../core/app_export.dart';

/// This class is used in the [productcardgrid_item_widget] screen.
class ProductcardgridItemModel {
  ProductcardgridItemModel({
    this.closeImage,
    this.discountText,
    this.productName,
    this.productImage,
    this.shieldImage,
    this.priceText,
    this.priceImage,
    this.minusText,
    this.oneText,
    this.groupIconButton,
    this.id,
  }) {
    closeImage = closeImage ?? Rx(ImageConstant.imgClose);
    discountText = discountText ?? Rx("-25%");
    productName = productName ?? Rx("Fresh Cashew\r\n500g");
    productImage = productImage ?? Rx(ImageConstant.imgCashews1);
    shieldImage = shieldImage ?? Rx(ImageConstant.imgIconlyBoldHeart);
    priceText = priceText ?? Rx("400");
    priceImage = priceImage ?? Rx(ImageConstant.imgClosePrimary);
    minusText = minusText ?? Rx("-");
    oneText = oneText ?? Rx("1");
    groupIconButton = groupIconButton ?? Rx(ImageConstant.imgGroup3);
    id = id ?? Rx("");
  }

  Rx<String>? closeImage;

  Rx<String>? discountText;

  Rx<String>? productName;

  Rx<String>? productImage;

  Rx<String>? shieldImage;

  Rx<String>? priceText;

  Rx<String>? priceImage;

  Rx<String>? minusText;

  Rx<String>? oneText;

  Rx<String>? groupIconButton;

  Rx<String>? id;
}

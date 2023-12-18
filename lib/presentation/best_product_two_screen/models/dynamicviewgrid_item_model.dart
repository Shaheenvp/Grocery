import '../../../core/app_export.dart';

/// This class is used in the [dynamicviewgrid_item_widget] screen.
class DynamicviewgridItemModel {
  DynamicviewgridItemModel({
    this.image1,
    this.text1,
    this.image2,
    this.image3,
    this.text2,
    this.text3,
    this.image4,
    this.text4,
    this.text5,
    this.iconButton2,
    this.id,
  }) {
    image1 = image1 ?? Rx(ImageConstant.imgClose);
    text1 = text1 ?? Rx("-25%");
    image2 = image2 ?? Rx(ImageConstant.imgTomatoes1);
    image3 = image3 ?? Rx(ImageConstant.imgIconlyBoldHeart);
    text2 = text2 ?? Rx("Fresh Organic Tomato \r\n500g");
    text3 = text3 ?? Rx("30");
    image4 = image4 ?? Rx(ImageConstant.imgClosePrimary);
    text4 = text4 ?? Rx("-");
    text5 = text5 ?? Rx("1");
    iconButton2 = iconButton2 ?? Rx(ImageConstant.imgGroup3);
    id = id ?? Rx("");
  }

  Rx<String>? image1;

  Rx<String>? text1;

  Rx<String>? image2;

  Rx<String>? image3;

  Rx<String>? text2;

  Rx<String>? text3;

  Rx<String>? image4;

  Rx<String>? text4;

  Rx<String>? text5;

  Rx<String>? iconButton2;

  Rx<String>? id;
}

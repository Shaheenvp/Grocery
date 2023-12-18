import '../../../core/app_export.dart';

/// This class is used in the [dynamicview_item_widget] screen.
class DynamicviewItemModel {
  DynamicviewItemModel({
    this.closeImage,
    this.twentyFiveText,
    this.shieldImage,
    this.tomatoImage,
    this.tomatoText,
    this.thirtyText,
    this.thirtyCloseImage,
    this.minusText,
    this.oneText,
    this.groupIconButton,
    this.id,
  }) {
    closeImage = closeImage ?? Rx(ImageConstant.imgClose);
    twentyFiveText = twentyFiveText ?? Rx("-25%");
    shieldImage = shieldImage ?? Rx(ImageConstant.imgIconlyBoldHeart);
    tomatoImage = tomatoImage ?? Rx(ImageConstant.imgTomatoes1);
    tomatoText = tomatoText ?? Rx("Fresh Organic Tomato \r\n500g");
    thirtyText = thirtyText ?? Rx("30");
    thirtyCloseImage = thirtyCloseImage ?? Rx(ImageConstant.imgClosePrimary);
    minusText = minusText ?? Rx("-");
    oneText = oneText ?? Rx("1");
    groupIconButton = groupIconButton ?? Rx(ImageConstant.imgGroup3);
    id = id ?? Rx("");
  }

  Rx<String>? closeImage;

  Rx<String>? twentyFiveText;

  Rx<String>? shieldImage;

  Rx<String>? tomatoImage;

  Rx<String>? tomatoText;

  Rx<String>? thirtyText;

  Rx<String>? thirtyCloseImage;

  Rx<String>? minusText;

  Rx<String>? oneText;

  Rx<String>? groupIconButton;

  Rx<String>? id;
}

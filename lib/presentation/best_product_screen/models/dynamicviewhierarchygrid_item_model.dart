import '../../../core/app_export.dart';

/// This class is used in the [dynamicviewhierarchygrid_item_widget] screen.
class DynamicviewhierarchygridItemModel {
  DynamicviewhierarchygridItemModel({
    this.closeImage,
    this.twentyFiveText,
    this.shieldImage,
    this.negativeTwentyFiveImage,
    this.freshOrganicTomatoText,
    this.thirtyText,
    this.closeImage1,
    this.minusText,
    this.oneText,
    this.groupIconButton,
    this.id,
  }) {
    closeImage = closeImage ?? Rx(ImageConstant.imgClose);
    twentyFiveText = twentyFiveText ?? Rx("-25%");
    shieldImage = shieldImage ?? Rx(ImageConstant.imgIconlyBoldHeart);
    negativeTwentyFiveImage =
        negativeTwentyFiveImage ?? Rx(ImageConstant.imgTomatoes1);
    freshOrganicTomatoText =
        freshOrganicTomatoText ?? Rx("Fresh Organic Tomato \r\n500g");
    thirtyText = thirtyText ?? Rx("30");
    closeImage1 = closeImage1 ?? Rx(ImageConstant.imgClosePrimary);
    minusText = minusText ?? Rx("-");
    oneText = oneText ?? Rx("1");
    groupIconButton = groupIconButton ?? Rx(ImageConstant.imgGroup3);
    id = id ?? Rx("");
  }

  Rx<String>? closeImage;

  Rx<String>? twentyFiveText;

  Rx<String>? shieldImage;

  Rx<String>? negativeTwentyFiveImage;

  Rx<String>? freshOrganicTomatoText;

  Rx<String>? thirtyText;

  Rx<String>? closeImage1;

  Rx<String>? minusText;

  Rx<String>? oneText;

  Rx<String>? groupIconButton;

  Rx<String>? id;
}

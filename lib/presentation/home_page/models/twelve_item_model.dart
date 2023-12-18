import '../../../core/app_export.dart';

/// This class is used in the [twelve_item_widget] screen.
class TwelveItemModel {
  TwelveItemModel({
    this.artboardEleven,
    this.id,
  }) {
    artboardEleven = artboardEleven ?? Rx(ImageConstant.imgArtboard11);
    id = id ?? Rx("");
  }

  Rx<String>? artboardEleven;

  Rx<String>? id;
}

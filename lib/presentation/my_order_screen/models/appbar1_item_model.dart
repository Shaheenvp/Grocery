import '../../../core/app_export.dart';

/// This class is used in the [appbar1_item_widget] screen.
class Appbar1ItemModel {
  Appbar1ItemModel({
    this.arrowLeftImage,
    this.id,
  }) {
    arrowLeftImage = arrowLeftImage ?? Rx(ImageConstant.imgArrowLeft);
    id = id ?? Rx("");
  }

  Rx<String>? arrowLeftImage;

  Rx<String>? id;
}

import '../../../core/app_export.dart';

/// This class is used in the [artboardeleven_item_widget] screen.
class ArtboardelevenItemModel {
  ArtboardelevenItemModel({
    this.artboardEleven,
    this.id,
  }) {
    artboardEleven = artboardEleven ?? Rx(ImageConstant.imgArtboard11);
    id = id ?? Rx("");
  }

  Rx<String>? artboardEleven;

  Rx<String>? id;
}

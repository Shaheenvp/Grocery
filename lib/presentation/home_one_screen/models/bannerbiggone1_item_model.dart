import '../../../core/app_export.dart';

/// This class is used in the [bannerbiggone1_item_widget] screen.
class Bannerbiggone1ItemModel {
  Bannerbiggone1ItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}

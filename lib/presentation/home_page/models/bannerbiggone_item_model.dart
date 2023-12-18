import '../../../core/app_export.dart';

/// This class is used in the [bannerbiggone_item_widget] screen.
class BannerbiggoneItemModel {
  BannerbiggoneItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}

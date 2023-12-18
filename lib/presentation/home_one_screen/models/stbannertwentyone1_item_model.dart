import '../../../core/app_export.dart';

/// This class is used in the [stbannertwentyone1_item_widget] screen.
class Stbannertwentyone1ItemModel {
  Stbannertwentyone1ItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}

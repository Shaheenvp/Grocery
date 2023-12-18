import '../../../core/app_export.dart';

/// This class is used in the [stbannertwentyone_item_widget] screen.
class StbannertwentyoneItemModel {
  StbannertwentyoneItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}

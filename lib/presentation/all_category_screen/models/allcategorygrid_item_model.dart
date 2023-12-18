import '../../../core/app_export.dart';

/// This class is used in the [allcategorygrid_item_widget] screen.
class AllcategorygridItemModel {
  AllcategorygridItemModel({
    this.vegetablesText,
    this.id,
  }) {
    vegetablesText = vegetablesText ?? Rx("Vegetables");
    id = id ?? Rx("");
  }

  Rx<String>? vegetablesText;

  Rx<String>? id;
}

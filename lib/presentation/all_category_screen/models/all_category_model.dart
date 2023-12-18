import '../../../core/app_export.dart';
import 'allcategorygrid_item_model.dart';

/// This class defines the variables used in the [all_category_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllCategoryModel {
  Rx<List<AllcategorygridItemModel>> allcategorygridItemList = Rx([
    AllcategorygridItemModel(vegetablesText: "Vegetables".obs),
    AllcategorygridItemModel(vegetablesText: "Meat".obs),
    AllcategorygridItemModel(vegetablesText: "Oil & Ghee".obs),
    AllcategorygridItemModel(vegetablesText: "Rice".obs),
    AllcategorygridItemModel(vegetablesText: "Beverages".obs)
  ]);
}

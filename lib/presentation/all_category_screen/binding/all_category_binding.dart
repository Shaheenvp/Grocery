import '../controller/all_category_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AllCategoryScreen.
///
/// This class ensures that the AllCategoryController is created when the
/// AllCategoryScreen is first loaded.
class AllCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllCategoryController());
  }
}

import '../controller/best_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BestProductScreen.
///
/// This class ensures that the BestProductController is created when the
/// BestProductScreen is first loaded.
class BestProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BestProductController());
  }
}

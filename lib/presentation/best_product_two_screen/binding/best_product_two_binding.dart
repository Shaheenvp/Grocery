import '../controller/best_product_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BestProductTwoScreen.
///
/// This class ensures that the BestProductTwoController is created when the
/// BestProductTwoScreen is first loaded.
class BestProductTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BestProductTwoController());
  }
}

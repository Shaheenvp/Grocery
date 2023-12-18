import '../controller/best_product_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BestProductOneScreen.
///
/// This class ensures that the BestProductOneController is created when the
/// BestProductOneScreen is first loaded.
class BestProductOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BestProductOneController());
  }
}

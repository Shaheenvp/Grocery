import '../controller/my_cart_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCartProductScreen.
///
/// This class ensures that the MyCartProductController is created when the
/// MyCartProductScreen is first loaded.
class MyCartProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCartProductController());
  }
}

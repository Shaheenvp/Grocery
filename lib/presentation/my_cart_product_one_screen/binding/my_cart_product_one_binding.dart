import '../controller/my_cart_product_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCartProductOneScreen.
///
/// This class ensures that the MyCartProductOneController is created when the
/// MyCartProductOneScreen is first loaded.
class MyCartProductOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCartProductOneController());
  }
}

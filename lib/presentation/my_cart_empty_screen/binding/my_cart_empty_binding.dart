import '../controller/my_cart_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCartEmptyScreen.
///
/// This class ensures that the MyCartEmptyController is created when the
/// MyCartEmptyScreen is first loaded.
class MyCartEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCartEmptyController());
  }
}

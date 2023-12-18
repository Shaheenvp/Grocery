import '../controller/my_cart_date_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCartDateScreen.
///
/// This class ensures that the MyCartDateController is created when the
/// MyCartDateScreen is first loaded.
class MyCartDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCartDateController());
  }
}

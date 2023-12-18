import '../controller/delivery_to_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveryToOneScreen.
///
/// This class ensures that the DeliveryToOneController is created when the
/// DeliveryToOneScreen is first loaded.
class DeliveryToOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryToOneController());
  }
}

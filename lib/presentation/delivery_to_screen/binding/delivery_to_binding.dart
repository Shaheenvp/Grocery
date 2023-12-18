import '../controller/delivery_to_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliveryToScreen.
///
/// This class ensures that the DeliveryToController is created when the
/// DeliveryToScreen is first loaded.
class DeliveryToBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliveryToController());
  }
}

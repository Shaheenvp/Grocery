import '../controller/deliver_to_current_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliverToCurrentLocationScreen.
///
/// This class ensures that the DeliverToCurrentLocationController is created when the
/// DeliverToCurrentLocationScreen is first loaded.
class DeliverToCurrentLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliverToCurrentLocationController());
  }
}

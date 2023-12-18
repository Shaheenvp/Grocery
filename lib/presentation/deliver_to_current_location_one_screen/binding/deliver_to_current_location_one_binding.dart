import '../controller/deliver_to_current_location_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliverToCurrentLocationOneScreen.
///
/// This class ensures that the DeliverToCurrentLocationOneController is created when the
/// DeliverToCurrentLocationOneScreen is first loaded.
class DeliverToCurrentLocationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliverToCurrentLocationOneController());
  }
}

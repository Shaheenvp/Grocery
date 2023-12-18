import '../controller/deliver_to_new_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliverToNewAddressScreen.
///
/// This class ensures that the DeliverToNewAddressController is created when the
/// DeliverToNewAddressScreen is first loaded.
class DeliverToNewAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliverToNewAddressController());
  }
}

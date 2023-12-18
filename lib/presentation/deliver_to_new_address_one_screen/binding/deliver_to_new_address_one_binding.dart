import '../controller/deliver_to_new_address_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeliverToNewAddressOneScreen.
///
/// This class ensures that the DeliverToNewAddressOneController is created when the
/// DeliverToNewAddressOneScreen is first loaded.
class DeliverToNewAddressOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliverToNewAddressOneController());
  }
}

import '../controller/profile_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileAddressScreen.
///
/// This class ensures that the ProfileAddressController is created when the
/// ProfileAddressScreen is first loaded.
class ProfileAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileAddressController());
  }
}

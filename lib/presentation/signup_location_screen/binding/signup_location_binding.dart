import '../controller/signup_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignupLocationScreen.
///
/// This class ensures that the SignupLocationController is created when the
/// SignupLocationScreen is first loaded.
class SignupLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupLocationController());
  }
}

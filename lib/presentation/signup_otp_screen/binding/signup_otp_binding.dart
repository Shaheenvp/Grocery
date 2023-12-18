import '../controller/signup_otp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignupOtpScreen.
///
/// This class ensures that the SignupOtpController is created when the
/// SignupOtpScreen is first loaded.
class SignupOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupOtpController());
  }
}

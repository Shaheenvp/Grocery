import '../controller/payment_popup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentPopupScreen.
///
/// This class ensures that the PaymentPopupController is created when the
/// PaymentPopupScreen is first loaded.
class PaymentPopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPopupController());
  }
}

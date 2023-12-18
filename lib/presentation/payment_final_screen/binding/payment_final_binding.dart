import '../controller/payment_final_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentFinalScreen.
///
/// This class ensures that the PaymentFinalController is created when the
/// PaymentFinalScreen is first loaded.
class PaymentFinalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentFinalController());
  }
}

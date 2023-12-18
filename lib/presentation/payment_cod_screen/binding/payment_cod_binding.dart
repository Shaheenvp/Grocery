import '../controller/payment_cod_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentCodScreen.
///
/// This class ensures that the PaymentCodController is created when the
/// PaymentCodScreen is first loaded.
class PaymentCodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentCodController());
  }
}

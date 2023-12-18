import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/payment_final_screen/models/payment_final_model.dart';

/// A controller class for the PaymentFinalScreen.
///
/// This class manages the state of the PaymentFinalScreen, including the
/// current paymentFinalModelObj
class PaymentFinalController extends GetxController {
  Rx<PaymentFinalModel> paymentFinalModelObj = PaymentFinalModel().obs;
}

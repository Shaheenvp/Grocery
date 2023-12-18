import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/payment_cod_screen/models/payment_cod_model.dart';

/// A controller class for the PaymentCodScreen.
///
/// This class manages the state of the PaymentCodScreen, including the
/// current paymentCodModelObj
class PaymentCodController extends GetxController {
  Rx<PaymentCodModel> paymentCodModelObj = PaymentCodModel().obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;
}

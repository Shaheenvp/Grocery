import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/payment_popup_screen/models/payment_popup_model.dart';

/// A controller class for the PaymentPopupScreen.
///
/// This class manages the state of the PaymentPopupScreen, including the
/// current paymentPopupModelObj
class PaymentPopupController extends GetxController {
  Rx<PaymentPopupModel> paymentPopupModelObj = PaymentPopupModel().obs;
}

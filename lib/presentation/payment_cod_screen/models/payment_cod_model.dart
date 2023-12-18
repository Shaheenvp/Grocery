import '../../../core/app_export.dart';

/// This class defines the variables used in the [payment_cod_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentCodModel {
  Rx<List<String>> radioList = Rx(["msg_debit_credit_card", "lbl_net_banking"]);
}

import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/delivery_to_screen/models/delivery_to_model.dart';

/// A controller class for the DeliveryToScreen.
///
/// This class manages the state of the DeliveryToScreen, including the
/// current deliveryToModelObj
class DeliveryToController extends GetxController {
  Rx<DeliveryToModel> deliveryToModelObj = DeliveryToModel().obs;

  Rx<String> radioGroup = "".obs;
}

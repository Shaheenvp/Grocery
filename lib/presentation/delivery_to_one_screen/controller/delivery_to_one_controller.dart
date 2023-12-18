import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/delivery_to_one_screen/models/delivery_to_one_model.dart';

/// A controller class for the DeliveryToOneScreen.
///
/// This class manages the state of the DeliveryToOneScreen, including the
/// current deliveryToOneModelObj
class DeliveryToOneController extends GetxController {
  Rx<DeliveryToOneModel> deliveryToOneModelObj = DeliveryToOneModel().obs;

  Rx<String> radioGroup = "".obs;
}

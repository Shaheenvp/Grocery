import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/deliver_to_current_location_screen/models/deliver_to_current_location_model.dart';

/// A controller class for the DeliverToCurrentLocationScreen.
///
/// This class manages the state of the DeliverToCurrentLocationScreen, including the
/// current deliverToCurrentLocationModelObj
class DeliverToCurrentLocationController extends GetxController {
  Rx<DeliverToCurrentLocationModel> deliverToCurrentLocationModelObj =
      DeliverToCurrentLocationModel().obs;

  Rx<String> radioGroup = "".obs;
}

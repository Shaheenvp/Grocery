import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/track_order_screen/models/track_order_model.dart';

/// A controller class for the TrackOrderScreen.
///
/// This class manages the state of the TrackOrderScreen, including the
/// current trackOrderModelObj
class TrackOrderController extends GetxController {
  Rx<TrackOrderModel> trackOrderModelObj = TrackOrderModel().obs;

  Rx<bool> orderPlaced = false.obs;

  Rx<bool> orderPlaced1 = false.obs;

  Rx<bool> orderPlaced2 = false.obs;

  Rx<bool> orderConfirmed = false.obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;

  Rx<String> radioGroup2 = "".obs;
}

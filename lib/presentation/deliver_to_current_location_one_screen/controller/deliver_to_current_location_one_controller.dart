import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/deliver_to_current_location_one_screen/models/deliver_to_current_location_one_model.dart';

/// A controller class for the DeliverToCurrentLocationOneScreen.
///
/// This class manages the state of the DeliverToCurrentLocationOneScreen, including the
/// current deliverToCurrentLocationOneModelObj
class DeliverToCurrentLocationOneController extends GetxController {
  Rx<DeliverToCurrentLocationOneModel> deliverToCurrentLocationOneModelObj =
      DeliverToCurrentLocationOneModel().obs;

  Rx<String> radioGroup = "".obs;
}

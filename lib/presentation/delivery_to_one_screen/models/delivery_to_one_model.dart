import '../../../core/app_export.dart';

/// This class defines the variables used in the [delivery_to_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DeliveryToOneModel {
  Rx<List<String>> radioList = Rx(["msg_current_location", "lbl_new_adderss"]);
}

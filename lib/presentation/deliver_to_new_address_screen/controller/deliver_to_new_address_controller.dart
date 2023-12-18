import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/deliver_to_new_address_screen/models/deliver_to_new_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DeliverToNewAddressScreen.
///
/// This class manages the state of the DeliverToNewAddressScreen, including the
/// current deliverToNewAddressModelObj
class DeliverToNewAddressController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  Rx<DeliverToNewAddressModel> deliverToNewAddressModelObj =
      DeliverToNewAddressModel().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
  }
}

import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/deliver_to_new_address_one_screen/models/deliver_to_new_address_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DeliverToNewAddressOneScreen.
///
/// This class manages the state of the DeliverToNewAddressOneScreen, including the
/// current deliverToNewAddressOneModelObj
class DeliverToNewAddressOneController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  Rx<DeliverToNewAddressOneModel> deliverToNewAddressOneModelObj =
      DeliverToNewAddressOneModel().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
  }
}

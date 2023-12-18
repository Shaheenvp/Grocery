import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/profile_address_screen/models/profile_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileAddressScreen.
///
/// This class manages the state of the ProfileAddressScreen, including the
/// current profileAddressModelObj
class ProfileAddressController extends GetxController {
  TextEditingController addressController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  Rx<ProfileAddressModel> profileAddressModelObj = ProfileAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    editTextController.dispose();
  }
}

import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/profile_setting_screen/models/profile_setting_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileSettingScreen.
///
/// This class manages the state of the ProfileSettingScreen, including the
/// current profileSettingModelObj
class ProfileSettingController extends GetxController {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  Rx<ProfileSettingModel> profileSettingModelObj = ProfileSettingModel().obs;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    nameController.dispose();
  }
}

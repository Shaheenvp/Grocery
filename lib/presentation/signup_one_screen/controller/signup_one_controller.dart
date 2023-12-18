import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/signup_one_screen/models/signup_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupOneScreen.
///
/// This class manages the state of the SignupOneScreen, including the
/// current signupOneModelObj
class SignupOneController extends GetxController {
  TextEditingController userProfileController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

  Rx<SignupOneModel> signupOneModelObj = SignupOneModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    userProfileController.dispose();
    passwordFieldController.dispose();
    confirmPasswordFieldController.dispose();
  }
}

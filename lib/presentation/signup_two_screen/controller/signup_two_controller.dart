import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/signup_two_screen/models/signup_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupTwoScreen.
///
/// This class manages the state of the SignupTwoScreen, including the
/// current signupTwoModelObj
class SignupTwoController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<SignupTwoModel> signupTwoModelObj = SignupTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    phoneNumberController.dispose();
  }
}

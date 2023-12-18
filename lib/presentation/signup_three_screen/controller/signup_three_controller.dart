import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/signup_three_screen/models/signup_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupThreeScreen.
///
/// This class manages the state of the SignupThreeScreen, including the
/// current signupThreeModelObj
class SignupThreeController extends GetxController {
  TextEditingController addressSectionController = TextEditingController();

  TextEditingController citySectionController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  Rx<SignupThreeModel> signupThreeModelObj = SignupThreeModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  @override
  void onClose() {
    super.onClose();
    addressSectionController.dispose();
    citySectionController.dispose();
    pincodeController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in signupThreeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    signupThreeModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in signupThreeModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    signupThreeModelObj.value.dropdownItemList1.refresh();
  }
}

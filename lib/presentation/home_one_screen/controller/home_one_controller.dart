import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/home_one_screen/models/home_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeOneScreen.
///
/// This class manages the state of the HomeOneScreen, including the
/// current homeOneModelObj
class HomeOneController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeOneModel> homeOneModelObj = HomeOneModel().obs;

  Rx<int> sliderIndex = 0.obs;

  Rx<int> sliderIndex1 = 0.obs;

  Rx<int> sliderIndex2 = 0.obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

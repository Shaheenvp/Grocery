import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/best_product_two_screen/models/best_product_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BestProductTwoScreen.
///
/// This class manages the state of the BestProductTwoScreen, including the
/// current bestProductTwoModelObj
class BestProductTwoController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<BestProductTwoModel> bestProductTwoModelObj = BestProductTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

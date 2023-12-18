import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/best_product_one_screen/models/best_product_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BestProductOneScreen.
///
/// This class manages the state of the BestProductOneScreen, including the
/// current bestProductOneModelObj
class BestProductOneController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<BestProductOneModel> bestProductOneModelObj = BestProductOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/best_product_screen/models/best_product_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BestProductScreen.
///
/// This class manages the state of the BestProductScreen, including the
/// current bestProductModelObj
class BestProductController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<BestProductModel> bestProductModelObj = BestProductModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

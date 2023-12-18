import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/all_category_screen/models/all_category_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AllCategoryScreen.
///
/// This class manages the state of the AllCategoryScreen, including the
/// current allCategoryModelObj
class AllCategoryController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<AllCategoryModel> allCategoryModelObj = AllCategoryModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

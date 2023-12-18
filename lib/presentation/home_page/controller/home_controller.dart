import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  Rx<int> sliderIndex = 0.obs;

  Rx<int> sliderIndex1 = 0.obs;

  Rx<int> sliderIndex2 = 0.obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

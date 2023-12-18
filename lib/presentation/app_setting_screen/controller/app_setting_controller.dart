import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/app_setting_screen/models/app_setting_model.dart';

/// A controller class for the AppSettingScreen.
///
/// This class manages the state of the AppSettingScreen, including the
/// current appSettingModelObj
class AppSettingController extends GetxController {
  Rx<AppSettingModel> appSettingModelObj = AppSettingModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;
}

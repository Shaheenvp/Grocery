import '../controller/app_setting_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppSettingScreen.
///
/// This class ensures that the AppSettingController is created when the
/// AppSettingScreen is first loaded.
class AppSettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppSettingController());
  }
}

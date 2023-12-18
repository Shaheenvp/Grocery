import '../controller/profile_setting_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileSettingScreen.
///
/// This class ensures that the ProfileSettingController is created when the
/// ProfileSettingScreen is first loaded.
class ProfileSettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSettingController());
  }
}

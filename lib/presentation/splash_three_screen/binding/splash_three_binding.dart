import '../controller/splash_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashThreeScreen.
///
/// This class ensures that the SplashThreeController is created when the
/// SplashThreeScreen is first loaded.
class SplashThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashThreeController());
  }
}

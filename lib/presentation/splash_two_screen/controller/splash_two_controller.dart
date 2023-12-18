import 'package:mohammed_s_application12/core/app_export.dart';
import 'package:mohammed_s_application12/presentation/splash_two_screen/models/splash_two_model.dart';

/// A controller class for the SplashTwoScreen.
///
/// This class manages the state of the SplashTwoScreen, including the
/// current splashTwoModelObj
class SplashTwoController extends GetxController {
  Rx<SplashTwoModel> splashTwoModelObj = SplashTwoModel().obs;
}
